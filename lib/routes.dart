/// 应用路由配置
class AppRoutes {
  /// 路由名称常量
  static const String home = '/';
  static const String itemList = '/items';
  static const String itemDetail = '/items/detail';
  static const String itemEdit = '/items/edit';
  static const String itemAdd = '/items/add';
  static const String settings = '/settings';
  static const String backup = '/settings/backup';
  static const String restore = '/settings/restore';
  static const String export = '/settings/export';
  static const String import = '/settings/import';
  static const String alertsSettings = '/settings/alerts';
  static const String about = '/settings/about';
  static const String languageSettings = '/settings/language';

  /// 路由参数键名
  static const String itemIdParam = 'itemId';
  static const String isEditParam = 'isEdit';

  /// 生成带参数的路由路径
  static String itemDetailRoute(String itemId) {
    return '$itemDetail?id=$itemId';
  }

  static String itemEditRoute(String itemId, {bool isEdit = true}) {
    return '$itemEdit?id=$itemId&isEdit=${isEdit ? 'true' : 'false'}';
  }

  /// 解析路由参数
  static Map<String, String> parseRouteParams(String route) {
    final uri = Uri.parse(route);
    return uri.queryParameters;
  }

  /// 从参数中获取物品ID
  static String? getItemIdFromParams(Map<String, String> params) {
    return params[itemIdParam];
  }

  /// 从参数中获取是否为编辑模式
  static bool getIsEditFromParams(Map<String, String> params) {
    final isEditStr = params[isEditParam];
    return isEditStr?.toLowerCase() == 'true';
  }
}
