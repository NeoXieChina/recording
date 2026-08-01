import 'package:flutter/material.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/theme/app_theme.dart';
import 'package:recording/widgets/common/primary_button.dart';
import 'package:recording/widgets/common/secondary_button.dart';

/// 空状态提示组件
class EmptyState extends StatelessWidget {
  /// 构造函数
  const EmptyState({
    super.key,
    required this.icon,
    required this.title,
    this.description,
    this.primaryAction,
    this.secondaryAction,
    this.padding,
    this.iconSize = 64,
    this.iconColor,
    this.titleStyle,
    this.descriptionStyle,
    this.actionsSpacing = 16,
  });

  /// 图标
  final IconData icon;

  /// 标题
  final String title;

  /// 描述
  final String? description;

  /// 主要操作按钮
  final EmptyStateAction? primaryAction;

  /// 次要操作按钮
  final EmptyStateAction? secondaryAction;

  /// 内边距
  final EdgeInsetsGeometry? padding;

  /// 图标大小
  final double iconSize;

  /// 图标颜色
  final Color? iconColor;

  /// 标题样式
  final TextStyle? titleStyle;

  /// 描述样式
  final TextStyle? descriptionStyle;

  /// 操作按钮间距
  final double actionsSpacing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Center(
      child: Padding(
        padding: padding ?? AppTheme.paddingExtraLarge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: iconSize,
              color:
                  iconColor ??
                  (isDark
                      ? theme.colorScheme.onSurface.withAlpha(128)
                      : Colors.grey.shade400),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              textAlign: TextAlign.center,
              style:
                  titleStyle ??
                  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: isDark
                        ? theme.colorScheme.onSurface
                        : Colors.grey.shade700,
                  ),
            ),
            if (description != null) ...[
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  description!,
                  textAlign: TextAlign.center,
                  style:
                      descriptionStyle ??
                      TextStyle(
                        fontSize: 16,
                        color: isDark
                            ? theme.colorScheme.onSurface.withAlpha(179)
                            : Colors.grey.shade600,
                      ),
                ),
              ),
            ],
            if (primaryAction != null || secondaryAction != null) ...[
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (secondaryAction != null)
                    SecondaryButton.small(
                      onPressed: secondaryAction!.onPressed,
                      text: secondaryAction!.text,
                      icon: secondaryAction!.icon,
                      isLoading: secondaryAction!.isLoading,
                    ),
                  if (primaryAction != null && secondaryAction != null)
                    SizedBox(width: actionsSpacing),
                  if (primaryAction != null)
                    PrimaryButton.small(
                      onPressed: primaryAction!.onPressed,
                      text: primaryAction!.text,
                      icon: primaryAction!.icon,
                      isLoading: primaryAction!.isLoading,
                    ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  /// 创建无数据空状态
  static Widget noData({
    required BuildContext context,
    String? title,
    String? description,
    EmptyStateAction? primaryAction,
    EmptyStateAction? secondaryAction,
    EdgeInsetsGeometry? padding,
    double iconSize = 64,
    Color? iconColor,
    TextStyle? titleStyle,
    TextStyle? descriptionStyle,
    double actionsSpacing = 16,
  }) {
    final l10n = AppLocalizations.of(context);
    return EmptyState(
      icon: Icons.inventory_2_outlined,
      title: title ?? l10n.no_data,
      description: description ?? l10n.no_data_description,
      primaryAction: primaryAction,
      secondaryAction: secondaryAction,
      padding: padding,
      iconSize: iconSize,
      iconColor: iconColor,
      titleStyle: titleStyle,
      descriptionStyle: descriptionStyle,
      actionsSpacing: actionsSpacing,
    );
  }

  /// 创建加载失败空状态
  static Widget error({
    required BuildContext context,
    String? title,
    String? description,
    required VoidCallback onRetry,
    EmptyStateAction? secondaryAction,
    EdgeInsetsGeometry? padding,
    double iconSize = 64,
    Color? iconColor,
    TextStyle? titleStyle,
    TextStyle? descriptionStyle,
    double actionsSpacing = 16,
  }) {
    final l10n = AppLocalizations.of(context);
    return EmptyState(
      icon: Icons.error_outline,
      title: title ?? l10n.load_failed,
      description: description ?? l10n.load_failed_description,
      primaryAction: EmptyStateAction(
        text: l10n.retry,
        icon: Icons.refresh,
        onPressed: onRetry,
      ),
      secondaryAction: secondaryAction,
      padding: padding,
      iconSize: iconSize,
      iconColor: iconColor ?? Colors.red,
      titleStyle: titleStyle,
      descriptionStyle: descriptionStyle,
      actionsSpacing: actionsSpacing,
    );
  }

  /// 创建无网络空状态
  static Widget noNetwork({
    required BuildContext context,
    String? title,
    String? description,
    required VoidCallback onRetry,
    EmptyStateAction? secondaryAction,
    EdgeInsetsGeometry? padding,
    double iconSize = 64,
    Color? iconColor,
    TextStyle? titleStyle,
    TextStyle? descriptionStyle,
    double actionsSpacing = 16,
  }) {
    final l10n = AppLocalizations.of(context);
    return EmptyState(
      icon: Icons.wifi_off,
      title: title ?? l10n.network_connection_failed,
      description: description ?? l10n.network_connection_failed_description,
      primaryAction: EmptyStateAction(
        text: l10n.retry,
        icon: Icons.refresh,
        onPressed: onRetry,
      ),
      secondaryAction: secondaryAction,
      padding: padding,
      iconSize: iconSize,
      iconColor: iconColor,
      titleStyle: titleStyle,
      descriptionStyle: descriptionStyle,
      actionsSpacing: actionsSpacing,
    );
  }

  /// 创建搜索无结果空状态
  static Widget noResults({
    required BuildContext context,
    String? title,
    String? description,
    VoidCallback? onClearSearch,
    EmptyStateAction? secondaryAction,
    EdgeInsetsGeometry? padding,
    double iconSize = 64,
    Color? iconColor,
    TextStyle? titleStyle,
    TextStyle? descriptionStyle,
    double actionsSpacing = 16,
  }) {
    final l10n = AppLocalizations.of(context);
    return EmptyState(
      icon: Icons.search_off,
      title: title ?? l10n.no_results,
      description: description ?? l10n.no_results_description,
      primaryAction: onClearSearch != null
          ? EmptyStateAction(
              text: l10n.clear_search,
              icon: Icons.clear,
              onPressed: onClearSearch,
            )
          : null,
      secondaryAction: secondaryAction,
      padding: padding,
      iconSize: iconSize,
      iconColor: iconColor,
      titleStyle: titleStyle,
      descriptionStyle: descriptionStyle,
      actionsSpacing: actionsSpacing,
    );
  }

  /// 创建无权限空状态
  static Widget noPermission({
    required BuildContext context,
    String? title,
    String? description,
    required VoidCallback onRequestPermission,
    EmptyStateAction? secondaryAction,
    EdgeInsetsGeometry? padding,
    double iconSize = 64,
    Color? iconColor,
    TextStyle? titleStyle,
    TextStyle? descriptionStyle,
    double actionsSpacing = 16,
  }) {
    final l10n = AppLocalizations.of(context);
    return EmptyState(
      icon: Icons.lock_outline,
      title: title ?? l10n.insufficient_permission,
      description: description ?? l10n.insufficient_permission_description,
      primaryAction: EmptyStateAction(
        text: l10n.request_permission,
        icon: Icons.lock_open,
        onPressed: onRequestPermission,
      ),
      secondaryAction: secondaryAction,
      padding: padding,
      iconSize: iconSize,
      iconColor: iconColor,
      titleStyle: titleStyle,
      descriptionStyle: descriptionStyle,
      actionsSpacing: actionsSpacing,
    );
  }

  /// 创建自定义空状态
  static Widget custom({
    required IconData icon,
    required String title,
    String? description,
    EmptyStateAction? primaryAction,
    EmptyStateAction? secondaryAction,
    EdgeInsetsGeometry? padding,
    double iconSize = 64,
    Color? iconColor,
    TextStyle? titleStyle,
    TextStyle? descriptionStyle,
    double actionsSpacing = 16,
  }) {
    return EmptyState(
      icon: icon,
      title: title,
      description: description,
      primaryAction: primaryAction,
      secondaryAction: secondaryAction,
      padding: padding,
      iconSize: iconSize,
      iconColor: iconColor,
      titleStyle: titleStyle,
      descriptionStyle: descriptionStyle,
      actionsSpacing: actionsSpacing,
    );
  }
}

/// 空状态操作按钮
class EmptyStateAction {
  /// 构造函数
  const EmptyStateAction({
    required this.text,
    required this.onPressed,
    this.icon,
    this.isLoading = false,
  });

  /// 按钮文本
  final String text;

  /// 点击回调
  final VoidCallback onPressed;

  /// 按钮图标
  final IconData? icon;

  /// 是否显示加载状态
  final bool isLoading;
}
