import 'package:flutter/material.dart';
import 'package:recording/theme/app_theme.dart';

/// 主按钮组件（大圆角设计）
class PrimaryButton extends StatelessWidget {
  /// 构造函数
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
    this.isLoading = false,
    this.isEnabled = true,
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
    this.borderRadius,
    this.elevation = 2,
    this.minimumSize = const Size(120, 48),
  });

  /// 点击回调
  final VoidCallback? onPressed;

  /// 按钮文本
  final String text;

  /// 按钮图标
  final IconData? icon;

  /// 是否显示加载状态
  final bool isLoading;

  /// 按钮是否可用
  final bool isEnabled;

  /// 背景颜色
  final Color? backgroundColor;

  /// 前景颜色（文本和图标颜色）
  final Color? foregroundColor;

  /// 内边距
  final EdgeInsetsGeometry? padding;

  /// 圆角半径
  final BorderRadiusGeometry? borderRadius;

  /// 阴影高度
  final double elevation;

  /// 最小尺寸
  final Size minimumSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return ElevatedButton(
      onPressed: isEnabled && !isLoading ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            backgroundColor ??
            (isDark ? theme.colorScheme.primary : theme.colorScheme.primary),
        foregroundColor:
            foregroundColor ??
            (isDark ? theme.colorScheme.onPrimary : Colors.white),
        disabledBackgroundColor: isDark
            ? theme.colorScheme.primary.withAlpha(102)  // 0.4 opacity
            : theme.colorScheme.primary.withAlpha(102),  // 0.4 opacity
        disabledForegroundColor: isDark
            ? theme.colorScheme.onPrimary.withAlpha(153)  // 0.6 opacity
            : Colors.white.withAlpha(153),  // 0.6 opacity
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? AppTheme.borderRadiusLarge,
        ),
        elevation: elevation,
        minimumSize: minimumSize,
        shadowColor: isDark
            ? Color.fromRGBO(0, 0, 0, 0.3)
            : theme.colorScheme.primary.withAlpha(76),
      ),
      child: isLoading
          ? SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color:
                    foregroundColor ??
                    (isDark ? theme.colorScheme.onPrimary : Colors.white),
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: 20),
                  const SizedBox(width: 8),
                ],
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
    );
  }

  /// 创建全宽按钮
  static Widget fullWidth({
    required VoidCallback? onPressed,
    required String text,
    IconData? icon,
    bool isLoading = false,
    bool isEnabled = true,
    Color? backgroundColor,
    Color? foregroundColor,
    EdgeInsetsGeometry? padding,
    BorderRadiusGeometry? borderRadius,
    double elevation = 2,
  }) {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton(
        onPressed: onPressed,
        text: text,
        icon: icon,
        isLoading: isLoading,
        isEnabled: isEnabled,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: padding,
        borderRadius: borderRadius,
        elevation: elevation,
      ),
    );
  }

  /// 创建小型按钮
  static Widget small({
    required VoidCallback? onPressed,
    required String text,
    IconData? icon,
    bool isLoading = false,
    bool isEnabled = true,
    Color? backgroundColor,
    Color? foregroundColor,
    EdgeInsetsGeometry? padding,
    BorderRadiusGeometry? borderRadius,
    double elevation = 1,
  }) {
    return PrimaryButton(
      onPressed: onPressed,
      text: text,
      icon: icon,
      isLoading: isLoading,
      isEnabled: isEnabled,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      borderRadius: borderRadius ?? AppTheme.borderRadiusMedium,
      elevation: elevation,
      minimumSize: const Size(80, 36),
    );
  }

  /// 创建危险操作按钮（红色）
  static Widget danger({
    required VoidCallback? onPressed,
    required String text,
    IconData? icon,
    bool isLoading = false,
    bool isEnabled = true,
    EdgeInsetsGeometry? padding,
    BorderRadiusGeometry? borderRadius,
    double elevation = 2,
  }) {
    return PrimaryButton(
      onPressed: onPressed,
      text: text,
      icon: icon,
      isLoading: isLoading,
      isEnabled: isEnabled,
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      padding: padding,
      borderRadius: borderRadius,
      elevation: elevation,
    );
  }

  /// 创建成功操作按钮（绿色）
  static Widget success({
    required VoidCallback? onPressed,
    required String text,
    IconData? icon,
    bool isLoading = false,
    bool isEnabled = true,
    EdgeInsetsGeometry? padding,
    BorderRadiusGeometry? borderRadius,
    double elevation = 2,
  }) {
    return PrimaryButton(
      onPressed: onPressed,
      text: text,
      icon: icon,
      isLoading: isLoading,
      isEnabled: isEnabled,
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      padding: padding,
      borderRadius: borderRadius,
      elevation: elevation,
    );
  }
}
