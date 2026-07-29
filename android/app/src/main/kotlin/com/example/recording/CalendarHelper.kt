package com.example.recording

import android.Manifest
import android.app.Activity
import android.content.ComponentName
import android.content.ContentResolver
import android.content.ContentUris
import android.content.ContentValues
import android.content.Context
import android.content.pm.PackageManager
import android.database.Cursor
import android.net.Uri
import android.provider.CalendarContract
import android.util.Log
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import org.json.JSONException
import org.json.JSONObject
import android.widget.Toast
import java.util.Calendar as JavaCalendar

class CalendarHelper {
    companion object {
        private const val TAG = "CalendarHelper"
        private var denyPermissionMessage = "未获得日历权限，无法添加提醒事件"
        const val REQUEST_CALENDAR_PERMISSION = 1010

        private data class PendingEvent(
            val title: String,
            val description: String,
            val location: String,
            val beginTime: Long,
            val endTime: Long,
            val reminderMinutes: Int
        )

        private var pendingEvent: PendingEvent? = null

        /**
         * 检查权限并添加事件（带权限请求）
         */
        fun addEventWithPermission(
            activity: Activity,
            title: String,
            description: String,
            location: String,
            beginTimeMillis: Long,
            endTimeMillis: Long,
            reminderMinutes: Int
        ) {
            // 检查日历读写权限
            if (ContextCompat.checkSelfPermission(activity, Manifest.permission.WRITE_CALENDAR)
                != PackageManager.PERMISSION_GRANTED
                || ContextCompat.checkSelfPermission(activity, Manifest.permission.READ_CALENDAR)
                != PackageManager.PERMISSION_GRANTED
            ) {
                // 保存事件等待用户授权
                pendingEvent = PendingEvent(title, description, location, beginTimeMillis, endTimeMillis, reminderMinutes)

                // 这里可以加解释，但不强制
                if (ActivityCompat.shouldShowRequestPermissionRationale(activity, Manifest.permission.READ_CALENDAR)) {
                    Log.i(TAG, "需要日历权限来添加提醒事件")
                }

                // ✅ 直接请求权限（即使用户上次拒绝，这里依旧会再弹一次）
                ActivityCompat.requestPermissions(
                    activity,
                    arrayOf(
                        Manifest.permission.READ_CALENDAR,
                        Manifest.permission.WRITE_CALENDAR
                    ),
                    REQUEST_CALENDAR_PERMISSION
                )
            } else {
                // 权限已授权，直接添加
                val success = addEvent(activity, title, description, location, beginTimeMillis, endTimeMillis, reminderMinutes)
                if (!success) {
                    Toast.makeText(
                        activity,
                        "请先在系统日历中添加一个账户",
                        Toast.LENGTH_LONG
                    ).show()
                }
            }
        }

        /**
         * 在 Activity 的 onRequestPermissionsResult 中调用
         */
        fun onRequestPermissionsResultCalendar(
            activity: Activity,
            requestCode: Int,
            grantResults: IntArray
        ) {
            if (requestCode == REQUEST_CALENDAR_PERMISSION) {
                if (grantResults.size >= 2
                    && grantResults[0] == PackageManager.PERMISSION_GRANTED
                    && grantResults[1] == PackageManager.PERMISSION_GRANTED
                ) {
                Log.i(TAG, "日历权限申请成功")

                pendingEvent?.let { event ->
                    val success = addEvent(
                        activity,
                        event.title,
                        event.description,
                        event.location,
                        event.beginTime,
                        event.endTime,
                        event.reminderMinutes
                    )
                    if (!success) {
                        Toast.makeText(
                            activity,
                            "请先在系统日历中添加一个账户",
                            Toast.LENGTH_LONG
                        ).show()
                    }
                    pendingEvent = null
                }
                } else {
                    Log.e(TAG, "用户拒绝了日历权限")
                    Toast.makeText(
                        activity,
                        denyPermissionMessage,
                        Toast.LENGTH_SHORT
                    ).show()
                    // 如果用户永久拒绝，可跳转设置
//                if (!ActivityCompat.shouldShowRequestPermissionRationale(activity, android.Manifest.permission.READ_CALENDAR)) {
//                    val intent = Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS)
//                    intent.data = Uri.parse("package:" + activity.packageName)
//                    activity.startActivity(intent)
//                }
                }
            }
        }

        /** 获取系统日历账户 ID */
        private fun getCalendarAccountId(context: Context): Long {
            return getAvailableCalendarAccountId(context)
        }

        /** 判断事件是否已存在（避免重复） */
        private fun isEventAlreadyExists(context: Context, title: String, beginTimeMillis: Long): Boolean {
            val oneMinuteBefore = beginTimeMillis - 60 * 1000
            val oneMinuteAfter = beginTimeMillis + 60 * 1000

            val cursor: Cursor? = context.contentResolver.query(
                CalendarContract.Events.CONTENT_URI,
                arrayOf(CalendarContract.Events._ID),
                "${CalendarContract.Events.TITLE}=? AND ${CalendarContract.Events.DTSTART}>=? AND ${CalendarContract.Events.DTSTART}<=?",
                arrayOf(title, oneMinuteBefore.toString(), oneMinuteAfter.toString()),
                null
            )

            cursor?.use { c ->
                if (c.moveToFirst()) {
                    return true // 已存在
                }
            }
            return false
        }

        /** 插入日历事件 + 提醒 */
        private fun addEvent(
            context: Context,
            title: String,
            description: String,
            location: String,
            beginTimeMillis: Long,
            endTimeMillis: Long,
            reminderMinutes: Int
        ): Boolean {
            val calId = getCalendarAccountId(context)
            if (calId == -1L) {
                Log.e(TAG, "没有找到系统日历账户，请先在系统日历中添加一个账户")
                return false
            }

            if (isEventAlreadyExists(context, title, beginTimeMillis)) {
                Log.w(TAG, "事件已存在，跳过添加: $title")
                return false
            }

            val eventValues = ContentValues().apply {
                put(CalendarContract.Events.CALENDAR_ID, calId)
                put(CalendarContract.Events.TITLE, if (title.isEmpty()) "未命名事件" else title)
                put(CalendarContract.Events.DESCRIPTION, description)
                put(CalendarContract.Events.EVENT_LOCATION, location)
                put(CalendarContract.Events.DTSTART, beginTimeMillis)
                put(CalendarContract.Events.DTEND, endTimeMillis)
                put(CalendarContract.Events.HAS_ALARM, 1)
                put(CalendarContract.Events.EVENT_TIMEZONE, JavaCalendar.getInstance().timeZone.id)
            }

            val newEvent = context.contentResolver.insert(CalendarContract.Events.CONTENT_URI, eventValues)
            if (newEvent == null) {
                Log.e(TAG, "插入日历事件失败")
                return false
            }

            val eventId = ContentUris.parseId(newEvent)

            val reminderValues = ContentValues().apply {
                put(CalendarContract.Reminders.EVENT_ID, eventId)
                put(CalendarContract.Reminders.MINUTES, reminderMinutes)
                put(CalendarContract.Reminders.METHOD, CalendarContract.Reminders.METHOD_ALERT)
            }

            val reminderUri = context.contentResolver.insert(CalendarContract.Reminders.CONTENT_URI, reminderValues)
            if (reminderUri == null) {
                Log.e(TAG, "插入提醒失败")
                return false
            }

            Log.i(TAG, "日历事件添加成功，eventId=$eventId")
            return true
        }

        fun createCalendarReminder(context: Context, data: String) {
            try {
                // 将传入的字符串转成 JSON 对象
                val json = JSONObject(data)

                // 从 JSON 中取字段，如果没有就用默认值
                val title = json.optString("title", "测试")
                val description = json.optString("description", "测试")
                val location = json.optString("location", "测试")
                val startHour = json.optInt("startHour", 1)
                val startMinute = json.optInt("startMinute", 10)
                val endHour = json.optInt("endHour", startHour + 1)

                val begin = JavaCalendar.getInstance()
                begin.add(JavaCalendar.DAY_OF_MONTH, 0)         // 哪天开始，Calendar.DAY_OF_MONTH当前时间 + 后面参数值，比如我这里为0，就是今天，如果为1就是明天
                begin.set(JavaCalendar.HOUR_OF_DAY, startHour)  // 开始的小时，这里是24小时制 startHour的取值范围为0~23
                begin.set(JavaCalendar.MINUTE, startMinute)     // 开始的分钟

                val end = begin.clone() as JavaCalendar
                end.set(JavaCalendar.HOUR_OF_DAY, endHour)      // 结束的时间，参数和上面开始时间一样，赋值方式为end.set（）

                if (context !is Activity) {
                    Log.e("Calendar", "Context is not Activity")
                    return
                }

                // 添加事件
                addEventWithPermission(
                    context as Activity,
                    title,
                    description,
                    location,
                    begin.timeInMillis,   //事件开始时间的毫秒值
                    end.timeInMillis,     //事件结束时间的毫秒值
                    5   // 提前5分钟提醒
                )
            } catch (e: JSONException) {
                e.printStackTrace()
                Log.e("Calendar", "JSON解析失败：$data")
            }
        }

        /**
         * 检查手机是否支持CalendarProvider
         */
        fun hasCalendarProvider(context: Context): Boolean {
            val pm = context.packageManager

            // 检查 Provider 是否存在
            val providers = listOf(
                ComponentName(
                    "com.android.providers.calendar",
                    "com.android.providers.calendar.CalendarProvider2"
                ),
                ComponentName(
                    "com.android.providers.calendar",
                    "com.android.providers.calendar.CalendarProvider"
                )
            )

            var providerExists = false
            for (component in providers) {
                try {
                    pm.getProviderInfo(component, 0)
                    providerExists = true
                    break
                } catch (_: PackageManager.NameNotFoundException) {
                    // ignore
                }
            }

            if (!providerExists) {
                Log.w(TAG, "CalendarProvider不存在")
                return false
            }

            // 尝试访问 CalendarContract.Calendars.CONTENT_URI
            return try {
                val uri: Uri = CalendarContract.Calendars.CONTENT_URI
                val cursor = context.contentResolver.query(
                    uri,
                    arrayOf(CalendarContract.Calendars._ID),
                    null,
                    null,
                    null
                )
                cursor?.use {
                    val available = it.count >= 0 // 能查询说明可用
                    Log.i(TAG, "CalendarProvider可用: $available")
                    return available
                }
                Log.w(TAG, "CalendarProvider查询返回null")
                false
            } catch (e: Exception) {
                Log.e(TAG, "CalendarProvider访问异常: ${e.message}")
                false
            }
        }

        /**
         * 创建本地日历账户（参考Android官方示例）
         */
        private fun createLocalCalendar(context: Context): Long {
            try {
                val MY_ACCOUNT_NAME = "Recording App"
                val CALENDAR_NAME = "物品提醒日历"
                val CALENDAR_TIME_ZONE = JavaCalendar.getInstance().timeZone.id
                val OWNER_ACCOUNT = "recording@local"

                // 先检查是否已存在同名日历
                val existingCalendarId = getCalendarIdByName(context, MY_ACCOUNT_NAME)
                if (existingCalendarId != -1L) {
                    Log.i(TAG, "日历已存在: ID=$existingCalendarId")
                    return existingCalendarId
                }

                val values = ContentValues().apply {
                    put(CalendarContract.Calendars.ACCOUNT_NAME, MY_ACCOUNT_NAME)
                    put(CalendarContract.Calendars.ACCOUNT_TYPE, CalendarContract.ACCOUNT_TYPE_LOCAL)
                    put(CalendarContract.Calendars.NAME, CALENDAR_NAME)
                    put(CalendarContract.Calendars.CALENDAR_DISPLAY_NAME, CALENDAR_NAME)
                    put(CalendarContract.Calendars.CALENDAR_COLOR, -0x10000) // 红色
                    put(CalendarContract.Calendars.CALENDAR_ACCESS_LEVEL, CalendarContract.Calendars.CAL_ACCESS_OWNER)
                    put(CalendarContract.Calendars.OWNER_ACCOUNT, OWNER_ACCOUNT)
                    put(CalendarContract.Calendars.CALENDAR_TIME_ZONE, CALENDAR_TIME_ZONE)
                    put(CalendarContract.Calendars.SYNC_EVENTS, 1)
                    put(CalendarContract.Calendars.VISIBLE, 1)
                }

                val builder = CalendarContract.Calendars.CONTENT_URI.buildUpon()
                builder.appendQueryParameter(CalendarContract.CALLER_IS_SYNCADAPTER, "true")
                builder.appendQueryParameter(CalendarContract.Calendars.ACCOUNT_NAME, MY_ACCOUNT_NAME)
                builder.appendQueryParameter(CalendarContract.Calendars.ACCOUNT_TYPE, CalendarContract.ACCOUNT_TYPE_LOCAL)

                val uri = context.contentResolver.insert(builder.build(), values)
                if (uri == null) {
                    Log.e(TAG, "创建日历失败: 返回的URI为null")
                    return -1
                }

                val calendarId = ContentUris.parseId(uri)
                Log.i(TAG, "创建本地日历成功: ID=$calendarId")
                return calendarId
            } catch (e: SecurityException) {
                Log.e(TAG, "权限不足，无法创建日历: ${e.message}")
                return -1
            } catch (e: Exception) {
                Log.e(TAG, "创建日历异常: ${e.message}")
                return -1
            }
        }

        /**
         * 根据账户名获取日历ID
         */
        private fun getCalendarIdByName(context: Context, accountName: String): Long {
            val projection = arrayOf(CalendarContract.Calendars._ID)
            val selection = "${CalendarContract.Calendars.ACCOUNT_NAME} = ?"
            val selectionArgs = arrayOf(accountName)
            
            val cursor: Cursor? = try {
                context.contentResolver.query(
                    CalendarContract.Calendars.CONTENT_URI,
                    projection,
                    selection,
                    selectionArgs,
                    null
                )
            } catch (e: Exception) {
                null
            }
            
            cursor?.use { c ->
                if (c.moveToFirst()) {
                    return c.getLong(0)
                }
            }
            return -1
        }

        /**
         * 查询所有可见日历账户
         */
        data class CalendarAccount(
            val id: Long,
            val accountName: String,
            val displayName: String,
            val ownerAccount: String?,
            val visible: Boolean,
            val accountType: String
        )

        fun queryCalendars(context: Context): List<CalendarAccount> {
            val calendars = mutableListOf<CalendarAccount>()

            val projection = arrayOf(
                CalendarContract.Calendars._ID,
                CalendarContract.Calendars.ACCOUNT_NAME,
                CalendarContract.Calendars.CALENDAR_DISPLAY_NAME,
                CalendarContract.Calendars.OWNER_ACCOUNT,
                CalendarContract.Calendars.VISIBLE,
                CalendarContract.Calendars.ACCOUNT_TYPE
            )

            val cursor: Cursor? = try {
                context.contentResolver.query(
                    CalendarContract.Calendars.CONTENT_URI,
                    projection,
                    "${CalendarContract.Calendars.VISIBLE} = 1",
                    null,
                    null
                )
            } catch (e: SecurityException) {
                Log.e(TAG, "权限不足，无法查询日历: ${e.message}")
                null
            } catch (e: Exception) {
                Log.e(TAG, "查询日历失败: ${e.message}")
                null
            }

            cursor?.use {
                val idIndex = it.getColumnIndexOrThrow(CalendarContract.Calendars._ID)
                val accountIndex = it.getColumnIndexOrThrow(CalendarContract.Calendars.ACCOUNT_NAME)
                val nameIndex = it.getColumnIndexOrThrow(CalendarContract.Calendars.CALENDAR_DISPLAY_NAME)
                val ownerIndex = it.getColumnIndexOrThrow(CalendarContract.Calendars.OWNER_ACCOUNT)
                val visibleIndex = it.getColumnIndexOrThrow(CalendarContract.Calendars.VISIBLE)
                val accountTypeIndex = it.getColumnIndexOrThrow(CalendarContract.Calendars.ACCOUNT_TYPE)

                while (it.moveToNext()) {
                    val id = it.getLong(idIndex)
                    val accountName = it.getString(accountIndex) ?: ""
                    val displayName = it.getString(nameIndex) ?: ""
                    val ownerAccount = it.getString(ownerIndex)
                    val visible = it.getInt(visibleIndex) == 1
                    val accountType = it.getString(accountTypeIndex) ?: ""

                    calendars.add(
                        CalendarAccount(
                            id = id,
                            accountName = accountName,
                            displayName = displayName,
                            ownerAccount = ownerAccount,
                            visible = visible,
                            accountType = accountType
                        )
                    )
                    Log.i(TAG, "找到日历账户: ID=$id, 名称=$displayName, 账户=$accountName, 类型=$accountType")
                }
            }

            Log.i(TAG, "共找到 ${calendars.size} 个日历账户")
            return calendars
        }

        /**
         * 获取可用的日历账户ID（返回第一个可写日历）
         */
        fun getAvailableCalendarAccountId(context: Context): Long {
            try {
                // 先检查CalendarProvider是否可用
                if (!hasCalendarProvider(context)) {
                    Log.w(TAG, "CalendarProvider不可用")
                    return -1
                }

                val calendars = queryCalendars(context)
                if (calendars.isNotEmpty()) {
                    // 返回第一个日历账户的ID
                    val firstCalendar = calendars.first()
                    Log.i(TAG, "使用现有日历账户: ID=${firstCalendar.id}, 名称=${firstCalendar.displayName}")
                    return firstCalendar.id
                }

                Log.w(TAG, "没有找到可用的日历账户，尝试创建本地日历")
                // 尝试创建本地日历
                val calendarId = createLocalCalendar(context)
                if (calendarId != -1L) {
                    Log.i(TAG, "成功创建本地日历: ID=$calendarId")
                    return calendarId
                }

                Log.w(TAG, "创建本地日历失败")
                return -1
            } catch (e: SecurityException) {
                Log.e(TAG, "权限不足，无法查询日历: ${e.message}")
                return -1
            } catch (e: Exception) {
                Log.e(TAG, "查询日历失败: ${e.message}")
                return -1
            }
        }

        /**
         * 检查是否有可用的日历账户
         */
        fun hasCalendarAccount(context: Context): Boolean {
            return getAvailableCalendarAccountId(context) != -1L
        }

        /**
         * 删除指定日程
         */
        fun deleteEventById(context: Context, eventId: Long): Boolean {
            val uri: Uri = CalendarContract.Events.CONTENT_URI
            val selection = "${CalendarContract.Events._ID} = ?"
            val selectionArgs = arrayOf(eventId.toString())

            return try {
                val rowsDeleted = context.contentResolver.delete(uri, selection, selectionArgs)
                val success = rowsDeleted > 0
                if (success) {
                    Log.i(TAG, "成功删除事件: $eventId")
                } else {
                    Log.w(TAG, "未找到事件: $eventId")
                }
                success
            } catch (e: SecurityException) {
                Log.e(TAG, "权限不足，无法删除事件: ${e.message}")
                false
            } catch (e: Exception) {
                Log.e(TAG, "删除事件失败: ${e.message}")
                false
            }
        }

        /**
         * 创建本地日历（供Flutter调用）
         */
        fun createLocalCalendarForApp(context: Context): Long {
            return createLocalCalendar(context)
        }

        /**
         * 从外部传提示文本过来
         */
        fun setDenyPermissionMessage(message: String) {
            if (message.isNotEmpty()) {
                denyPermissionMessage = message
            }
        }
    }
}