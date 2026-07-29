# 智能物品管理

一个用于管理个人物品的Flutter应用，支持物品分类、过期提醒、备份恢复等功能。

## 功能特性

- 📱 **物品管理**：添加、编辑、删除物品
- 🏷️ **分类筛选**：按类型（消耗品/耐用品）和存储地点筛选
- 🔍 **搜索功能**：快速查找物品
- ⏰ **智能提醒**：过期和保修期提醒
- 📅 **日历同步**：将提醒同步到系统日历
- 💾 **数据备份**：导出和导入备份文件
- 🎨 **Material Design 3**：现代化界面设计

## 调试说明

### 模拟数据

应用在首次安装时会自动插入20条模拟数据，便于测试和演示。如需禁用，请修改 `lib/main.dart` 中的 `enableMockData` 常量为 `false`。

### 数据库问题解决

如果遇到数据库表结构错误，请参考 [DEBUG_NOTES.md](DEBUG_NOTES.md) 中的解决方案。

## 开发设置

### 环境要求

- Flutter 3.10.8+
- Dart 3.0.0+
- Android SDK / iOS开发环境

### 运行应用

```bash
flutter pub get
flutter run
```

### 构建发布版

```bash
flutter build apk --release
```

## 项目结构

``` text
lib/
├── data/
│   ├── datasources/      # 数据源（数据库、备份服务）
│   ├── models/           # 数据模型
│   └── repositories/     # 数据仓库
├── domain/               # 领域层
├── providers/            # 状态管理（Provider）
├── screens/              # 界面屏幕
│   ├── item_form/        # 物品表单页面
│   ├── item_list/        # 物品列表页面（主页面）
│   └── settings/         # 设置页面
├── services/             # 业务服务
├── theme/                # 主题配置
├── utils/                # 工具函数
└── widgets/              # 通用组件
```

## 依赖项

主要依赖：

- `provider`：状态管理
- `sqflite`：本地数据库
- `file_picker`：文件选择器
- `archive`：ZIP压缩/解压
- `flutter_slidable`：滑动操作
- `permission_handler`：权限管理
- `calendar_events`：日历事件

## 上线前检查清单

1. [ ] 将 `enableMockData` 设置为 `false`
2. [ ] 将 `resetDatabaseOnStart` 设置为 `false`
3. [ ] 测试所有核心功能
4. [ ] 验证备份/恢复功能
5. [ ] 检查权限请求流程
6. [ ] 测试不同屏幕尺寸适配

## 许可证

本项目仅供学习参考。
