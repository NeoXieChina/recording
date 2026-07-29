import 'package:flutter/material.dart';
import 'package:recording/theme/app_theme.dart';

/// 统一卡片组件
class AppCard extends StatelessWidget {
  /// 构造函数
  const AppCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.elevation = 2,
    this.color,
    this.shadowColor,
    this.border,
    this.onTap,
    this.onLongPress,
    this.semanticContainer = true,
    this.clipBehavior = Clip.antiAlias,
  });

  /// 卡片内容
  final Widget child;

  /// 内边距
  final EdgeInsetsGeometry? padding;

  /// 外边距
  final EdgeInsetsGeometry? margin;

  /// 圆角半径
  final BorderRadiusGeometry? borderRadius;

  /// 阴影高度
  final double elevation;

  /// 背景颜色
  final Color? color;

  /// 阴影颜色
  final Color? shadowColor;

  /// 边框
  final BoxBorder? border;

  /// 点击回调
  final VoidCallback? onTap;

  /// 长按回调
  final VoidCallback? onLongPress;

  /// 是否作为语义容器
  final bool semanticContainer;

  /// 裁剪行为
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Card(
      color: color ?? theme.cardTheme.color,
      elevation: elevation,
      shadowColor:
          shadowColor ??
          (isDark
              ? Color.fromRGBO(0, 0, 0, 0.5)
              : Color.fromRGBO(0, 0, 0, 0.1)),
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius is BorderRadius
            ? borderRadius as BorderRadius
            : AppTheme.borderRadiusMedium,
        side: border is Border ? (border as Border).left : BorderSide.none,
      ),
      margin: margin ?? AppTheme.paddingSmall,
      clipBehavior: clipBehavior,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        borderRadius: borderRadius is BorderRadius
            ? borderRadius as BorderRadius
            : AppTheme.borderRadiusMedium,
        child: Padding(
          padding: padding ?? AppTheme.paddingMedium,
          child: child,
        ),
      ),
    );
  }

  /// 创建带标题的卡片
  static Widget withTitle({
    required String title,
    required Widget child,
    Widget? trailing,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BorderRadiusGeometry? borderRadius,
    double elevation = 2,
    Color? color,
    Color? shadowColor,
    BoxBorder? border,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    bool semanticContainer = true,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return AppCard(
      padding: EdgeInsets.zero,
      margin: margin,
      borderRadius: borderRadius,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
      border: border,
      onTap: onTap,
      onLongPress: onLongPress,
      semanticContainer: semanticContainer,
      clipBehavior: clipBehavior,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ?trailing,
                // ignore: use_null_aware_elements
              ],
            ),
          ),
          const Divider(height: 1),
          Padding(padding: padding ?? const EdgeInsets.all(16), child: child),
        ],
      ),
    );
  }

  /// 创建带图标和标题的卡片
  static Widget withIconTitle({
    required IconData icon,
    required String title,
    required Widget child,
    Color? iconColor,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BorderRadiusGeometry? borderRadius,
    double elevation = 2,
    Color? color,
    Color? shadowColor,
    BoxBorder? border,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    bool semanticContainer = true,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return AppCard(
      padding: EdgeInsets.zero,
      margin: margin,
      borderRadius: borderRadius,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
      border: border,
      onTap: onTap,
      onLongPress: onLongPress,
      semanticContainer: semanticContainer,
      clipBehavior: clipBehavior,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Row(
              children: [
                Icon(icon, color: iconColor, size: 24),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Padding(padding: padding ?? const EdgeInsets.all(16), child: child),
        ],
      ),
    );
  }

  /// 创建列表卡片
  static Widget listTile({
    required Widget leading,
    required String title,
    String? subtitle,
    Widget? trailing,
    EdgeInsetsGeometry? margin,
    BorderRadiusGeometry? borderRadius,
    double elevation = 1,
    Color? color,
    Color? shadowColor,
    BoxBorder? border,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    bool semanticContainer = true,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return AppCard(
      padding: const EdgeInsets.symmetric(vertical: 8),
      margin: margin,
      borderRadius: borderRadius,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
      border: border,
      onTap: onTap,
      onLongPress: onLongPress,
      semanticContainer: semanticContainer,
      clipBehavior: clipBehavior,
      child: ListTile(
        leading: leading,
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              )
            : null,
        trailing: trailing,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        minLeadingWidth: 0,
      ),
    );
  }

  /// 创建带操作的卡片
  static Widget withActions({
    required Widget child,
    required List<Widget> actions,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BorderRadiusGeometry? borderRadius,
    double elevation = 2,
    Color? color,
    Color? shadowColor,
    BoxBorder? border,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    bool semanticContainer = true,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return AppCard(
      padding: EdgeInsets.zero,
      margin: margin,
      borderRadius: borderRadius,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
      border: border,
      onTap: onTap,
      onLongPress: onLongPress,
      semanticContainer: semanticContainer,
      clipBehavior: clipBehavior,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: padding ?? const EdgeInsets.all(16), child: child),
          Container(
            color: Colors.grey.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: actions
                  .map(
                    (action) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      child: action,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  /// 创建带状态的卡片
  static Widget withStatus({
    required Widget child,
    required Color statusColor,
    String? statusText,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BorderRadiusGeometry? borderRadius,
    double elevation = 2,
    Color? color,
    Color? shadowColor,
    BoxBorder? border,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    bool semanticContainer = true,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return AppCard(
      padding: EdgeInsets.zero,
      margin: margin,
      borderRadius: borderRadius,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
      border: border,
      onTap: onTap,
      onLongPress: onLongPress,
      semanticContainer: semanticContainer,
      clipBehavior: clipBehavior,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4,
            decoration: BoxDecoration(
              color: statusColor,
              borderRadius: borderRadius is BorderRadius
                  ? BorderRadius.only(
                      topLeft: borderRadius.topLeft,
                      topRight: borderRadius.topRight,
                    )
                  : const BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.zero,
                    ),
            ),
          ),
          if (statusText != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: statusColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    statusText,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: statusColor,
                    ),
                  ),
                ],
              ),
            ),
          Padding(
            padding:
                padding ??
                EdgeInsets.fromLTRB(16, statusText != null ? 8 : 16, 16, 16),
            child: child,
          ),
        ],
      ),
    );
  }

  /// 创建网格卡片
  static Widget grid({
    required Widget child,
    required VoidCallback onTap,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BorderRadiusGeometry? borderRadius,
    double elevation = 1,
    Color? color,
    Color? shadowColor,
    BoxBorder? border,
    VoidCallback? onLongPress,
    bool semanticContainer = true,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return AppCard(
      padding: padding ?? const EdgeInsets.all(12),
      margin: margin ?? const EdgeInsets.all(8),
      borderRadius: borderRadius ?? AppTheme.borderRadiusMedium,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
      border: border,
      onTap: onTap,
      onLongPress: onLongPress,
      semanticContainer: semanticContainer,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
}
