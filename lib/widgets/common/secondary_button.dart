import 'package:flutter/material.dart';
import 'package:recording/theme/app_theme.dart';

/// 次按钮组件
class SecondaryButton extends StatelessWidget {
  /// 构造函数
  const SecondaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
    this.isLoading = false,
    this.isEnabled = true,
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
    this.padding,
    this.borderRadius,
    this.elevation = 0,
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

  /// 边框颜色
  final Color? borderColor;

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

    return OutlinedButton(
      onPressed: isEnabled && !isLoading ? onPressed : null,
      style: OutlinedButton.styleFrom(
        backgroundColor:
            backgroundColor ??
            (isDark ? Colors.transparent : Colors.transparent),
        foregroundColor:
            foregroundColor ??
            (isDark ? theme.colorScheme.onSurface : theme.colorScheme.primary),
        disabledBackgroundColor: isDark
            ? theme.colorScheme.surface.withAlpha(20) // 0.08 opacity
            : Colors.grey.shade100,
        disabledForegroundColor: isDark
            ? theme.colorScheme.onSurface.withAlpha(97) // 0.38 opacity
            : theme.colorScheme.primary.withAlpha(97),
        // 0.38 opacity
        side: BorderSide(
          color:
              borderColor ??
              (isDark
                  ? theme.colorScheme.outline
                  : theme.colorScheme.primary.withAlpha(128)),
          width: 1.5,
        ),
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? AppTheme.borderRadiusLarge,
        ),
        elevation: elevation,
        minimumSize: minimumSize,
      ),
      child: isLoading
          ? SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color:
                    foregroundColor ??
                    (isDark
                        ? theme.colorScheme.onSurface
                        : theme.colorScheme.primary),
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
                    fontWeight: FontWeight.w500,
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
    Color? borderColor,
    EdgeInsetsGeometry? padding,
    BorderRadiusGeometry? borderRadius,
    double elevation = 0,
  }) {
    return SizedBox(
      width: double.infinity,
      child: SecondaryButton(
        onPressed: onPressed,
        text: text,
        icon: icon,
        isLoading: isLoading,
        isEnabled: isEnabled,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        borderColor: borderColor,
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
    Color? borderColor,
    EdgeInsetsGeometry? padding,
    BorderRadiusGeometry? borderRadius,
    double elevation = 0,
  }) {
    return SecondaryButton(
      onPressed: onPressed,
      text: text,
      icon: icon,
      isLoading: isLoading,
      isEnabled: isEnabled,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      borderColor: borderColor,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      borderRadius: borderRadius ?? AppTheme.borderRadiusMedium,
      elevation: elevation,
      minimumSize: const Size(80, 36),
    );
  }

  /// 创建文本按钮样式（无边框）
  static Widget textStyle({
    required VoidCallback? onPressed,
    required String text,
    IconData? icon,
    bool isLoading = false,
    bool isEnabled = true,
    Color? foregroundColor,
    EdgeInsetsGeometry? padding,
  }) {
    return SecondaryButton(
      onPressed: onPressed,
      text: text,
      icon: icon,
      isLoading: isLoading,
      isEnabled: isEnabled,
      backgroundColor: Colors.transparent,
      foregroundColor: foregroundColor,
      borderColor: Colors.transparent,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      borderRadius: AppTheme.borderRadiusSmall,
      elevation: 0,
      minimumSize: const Size(64, 40),
    );
  }

  /// 创建图标按钮
  static Widget iconOnly({
    required VoidCallback? onPressed,
    required IconData icon,
    String? tooltip,
    bool isLoading = false,
    bool isEnabled = true,
    Color? backgroundColor,
    Color? foregroundColor,
    Color? borderColor,
    double size = 48,
    double iconSize = 24,
  }) {
    return SizedBox(
      width: size,
      height: size,
      child: SecondaryButton(
        onPressed: onPressed,
        text: '',
        icon: icon,
        isLoading: isLoading,
        isEnabled: isEnabled,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        borderColor: borderColor,
        padding: EdgeInsets.zero,
        borderRadius: BorderRadius.circular(size / 2),
        elevation: 0,
        minimumSize: Size(size, size),
      ),
    );
  }
}
