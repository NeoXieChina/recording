import 'package:flutter/material.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/theme/app_theme.dart';

/// 统一的应用脚手架组件
class AppScaffold extends StatelessWidget {
  /// 构造函数
  const AppScaffold({
    super.key,
    required this.title,
    this.child,
    this.actions = const [],
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.appBarElevation = 2,
    this.automaticallyImplyLeading = true,
    this.centerTitle = true,
  });

  /// 页面标题
  final String title;

  /// 页面内容
  final Widget? child;

  /// AppBar右侧操作按钮
  final List<Widget> actions;

  /// 悬浮操作按钮
  final Widget? floatingActionButton;

  /// 底部导航栏
  final Widget? bottomNavigationBar;

  /// 背景颜色
  final Color? backgroundColor;

  /// AppBar阴影高度
  final double appBarElevation;

  /// 是否自动显示返回按钮
  final bool automaticallyImplyLeading;

  /// 标题是否居中
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: centerTitle,
        elevation: appBarElevation,
        scrolledUnderElevation: appBarElevation * 2,
        automaticallyImplyLeading: automaticallyImplyLeading,
        actions: actions.isNotEmpty ? actions : null,
      ),
      body: Container(
        color: backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
        child: child ?? const SizedBox(),
      ),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  /// 创建带加载状态的脚手架
  static Widget withLoading({
    required String title,
    bool isLoading = false,
    Widget? child,
    List<Widget> actions = const [],
  }) {
    return AppScaffold(
      title: title,
      actions: actions,
      child: Stack(
        children: [
          if (child != null) child, // ignore: use_null_aware_elements
          if (isLoading)
            Container(
              color: Color.fromRGBO(0, 0, 0, 0.3),
              child: const Center(child: CircularProgressIndicator()),
            ),
        ],
      ),
    );
  }

  /// 创建带错误状态的脚手架
  static Widget withError({
    required BuildContext context,
    required String title,
    required String errorMessage,
    VoidCallback? onRetry,
    List<Widget> actions = const [],
  }) {
    final l10n = AppLocalizations.of(context);
    return AppScaffold(
      title: title,
      actions: actions,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              l10n.load_failed,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: AppTheme.paddingMedium,
              child: Text(
                errorMessage,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh),
                label: Text(l10n.retry),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  /// 创建带空状态的脚手架
  static Widget withEmpty({
    required BuildContext context,
    required String title,
    required String emptyMessage,
    String? actionText,
    VoidCallback? onAction,
    List<Widget> actions = const [],
  }) {
    final l10n = AppLocalizations.of(context);
    return AppScaffold(
      title: title,
      actions: actions,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.inventory_2_outlined,
              size: 64,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            Text(
              l10n.no_data,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: AppTheme.paddingMedium,
              child: Text(
                emptyMessage,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),
            ),
            if (actionText != null && onAction != null) ...[
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: onAction,
                icon: const Icon(Icons.add),
                label: Text(actionText),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
