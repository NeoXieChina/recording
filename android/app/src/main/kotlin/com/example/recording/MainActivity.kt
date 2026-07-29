package com.example.recording

import android.os.Build
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import androidx.annotation.NonNull

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.example.recording/calendar"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "addCalendarEvent" -> {
                    val title = call.argument<String>("title") ?: ""
                    val description = call.argument<String>("description") ?: ""
                    val location = call.argument<String>("location") ?: ""
                    val beginTimeMillis = call.argument<Long>("beginTimeMillis") ?: 0L
                    val endTimeMillis = call.argument<Long>("endTimeMillis") ?: 0L
                    val reminderMinutes = call.argument<Int>("reminderMinutes") ?: 5
                    
                    CalendarHelper.addEventWithPermission(
                        this,
                        title,
                        description,
                        location,
                        beginTimeMillis,
                        endTimeMillis,
                        reminderMinutes
                    )
                    result.success(true)
                }
                "hasCalendarAccount" -> {
                    val hasAccount = CalendarHelper.hasCalendarAccount(this)
                    result.success(hasAccount)
                }
                "deleteCalendarEvent" -> {
                    val eventId = call.argument<Long>("eventId") ?: 0L
                    val success = CalendarHelper.deleteEventById(this, eventId)
                    result.success(success)
                }
                "createCalendar" -> {
                    val calendarId = CalendarHelper.createLocalCalendarForApp(this)
                    result.success(calendarId != -1L)
                }
                "setDenyPermissionMessage" -> {
                    val message = call.argument<String>("message") ?: ""
                    CalendarHelper.setDenyPermissionMessage(message)
                    result.success(true)
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        // 处理日历权限
        if (requestCode == CalendarHelper.REQUEST_CALENDAR_PERMISSION) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                CalendarHelper.onRequestPermissionsResultCalendar(this, requestCode, grantResults)
            }
        }
    }
}
