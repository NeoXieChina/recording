import 'package:flutter/material.dart';
import 'package:recording/theme/app_theme.dart';

/// 带校验的文本输入框组件
class AppTextField extends StatefulWidget {
  /// 构造函数
  const AppTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.obscureText = false,
    this.maxLines = 1,
    this.maxLength,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.onTap,
    this.readOnly = false,
    this.enabled = true,
    this.autofocus = false,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.textCapitalization = TextCapitalization.none,
    this.focusNode,
    this.nextFocusNode,
    this.padding,
    this.borderRadius,
    this.fillColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.enabledBorderColor,
    this.disabledBorderColor,
    this.labelStyle,
    this.hintStyle,
    this.errorStyle,
    this.textStyle,
    this.counterStyle,
    this.contentPadding,
    this.isRequired = false,
    this.showClearButton = false,
    this.showError = true,
    this.error,
  });

  /// 控制器
  final TextEditingController controller;

  /// 标签文本
  final String? labelText;

  /// 提示文本
  final String? hintText;

  /// 前缀图标
  final IconData? prefixIcon;

  /// 后缀图标
  final Widget? suffixIcon;

  /// 键盘类型
  final TextInputType keyboardType;

  /// 键盘动作
  final TextInputAction textInputAction;

  /// 是否隐藏文本（用于密码）
  final bool obscureText;

  /// 最大行数
  final int maxLines;

  /// 最大长度
  final int? maxLength;

  /// 校验函数
  final String? Function(String?)? validator;

  /// 文本变化回调
  final ValueChanged<String>? onChanged;

  /// 提交回调
  final ValueChanged<String>? onSubmitted;

  /// 编辑完成回调
  final VoidCallback? onEditingComplete;

  /// 点击回调
  final VoidCallback? onTap;

  /// 是否只读
  final bool readOnly;

  /// 是否启用
  final bool enabled;

  /// 是否自动获取焦点
  final bool autofocus;

  /// 是否自动校正
  final bool autocorrect;

  /// 是否启用建议
  final bool enableSuggestions;

  /// 文本大写
  final TextCapitalization textCapitalization;

  /// 焦点节点
  final FocusNode? focusNode;

  /// 下一个焦点节点（用于键盘下一步）
  final FocusNode? nextFocusNode;

  /// 内边距
  final EdgeInsetsGeometry? padding;

  /// 圆角半径
  final BorderRadiusGeometry? borderRadius;

  /// 填充颜色
  final Color? fillColor;

  /// 聚焦时边框颜色
  final Color? focusedBorderColor;

  /// 错误时边框颜色
  final Color? errorBorderColor;

  /// 启用时边框颜色
  final Color? enabledBorderColor;

  /// 禁用时边框颜色
  final Color? disabledBorderColor;

  /// 标签样式
  final TextStyle? labelStyle;

  /// 提示样式
  final TextStyle? hintStyle;

  /// 错误样式
  final TextStyle? errorStyle;

  /// 文本样式
  final TextStyle? textStyle;

  /// 计数器样式
  final TextStyle? counterStyle;

  /// 内容内边距
  final EdgeInsetsGeometry? contentPadding;

  /// 是否为必填项
  final bool isRequired;

  /// 是否显示清除按钮
  final bool showClearButton;

  /// 是否显示错误信息
  final bool showError;

  /// 外部错误信息（优先于validator）
  final String? error;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  String? _errorText;
  bool _hasFocus = false;
  bool _isDirty = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);
    _controller.addListener(_onTextChange);
  }

  @override
  void didUpdateWidget(covariant AppTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_onTextChange);
      _controller = widget.controller;
      _controller.addListener(_onTextChange);
    }
    if (oldWidget.focusNode != widget.focusNode) {
      _focusNode.removeListener(_onFocusChange);
      _focusNode = widget.focusNode ?? FocusNode();
      _focusNode.addListener(_onFocusChange);
    }
    if (oldWidget.error != widget.error) {
      _updateErrorText();
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    _controller.removeListener(_onTextChange);
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _hasFocus = _focusNode.hasFocus;
      if (!_hasFocus && _isDirty) {
        _validate();
      }
    });
  }

  void _onTextChange() {
    setState(() {
      _isDirty = true;
      if (_hasFocus) {
        // 实时校验
        _validate();
      }
    });
    widget.onChanged?.call(_controller.text);
  }

  void _validate() {
    if (widget.validator != null) {
      setState(() {
        _errorText = widget.validator!(_controller.text);
      });
    }
  }

  void _updateErrorText() {
    setState(() {
      _errorText = widget.error;
    });
  }

  void _onClear() {
    _controller.clear();
    if (widget.onChanged != null) {
      widget.onChanged!('');
    }
    _validate();
  }

  void _onSubmitted(String value) {
    widget.onSubmitted?.call(value);
    if (widget.nextFocusNode != null) {
      FocusScope.of(context).requestFocus(widget.nextFocusNode);
    } else {
      _focusNode.unfocus();
    }
  }

  String? _getErrorText() {
    if (widget.error != null && widget.error!.isNotEmpty) {
      return widget.error;
    }
    if (_errorText != null && _errorText!.isNotEmpty) {
      return _errorText;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final errorText = _getErrorText();
    final hasError = errorText != null && errorText.isNotEmpty;

    return Padding(
      padding: widget.padding ?? AppTheme.paddingSmall,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.labelText != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Text(
                    widget.labelText!,
                    style:
                        widget.labelStyle ??
                        TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: hasError
                              ? theme.colorScheme.error
                              : theme.colorScheme.onSurface,
                        ),
                  ),
                  if (widget.isRequired)
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        '*',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: theme.colorScheme.error,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          TextFormField(
            controller: _controller,
            focusNode: _focusNode,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            obscureText: widget.obscureText,
            maxLines: widget.maxLines,
            maxLength: widget.maxLength,
            readOnly: widget.readOnly,
            enabled: widget.enabled,
            autofocus: widget.autofocus,
            autocorrect: widget.autocorrect,
            enableSuggestions: widget.enableSuggestions,
            textCapitalization: widget.textCapitalization,
            onChanged: (value) {
              // 通过controller监听处理
            },
            onFieldSubmitted: _onSubmitted,
            onEditingComplete: widget.onEditingComplete,
            onTap: widget.onTap,
            style:
                widget.textStyle ??
                TextStyle(
                  fontSize: 16,
                  color: widget.enabled
                      ? theme.colorScheme.onSurface
                      : theme.colorScheme.onSurface.withAlpha(128),
                ),
            decoration: InputDecoration(
              hintText: widget.hintText,
              prefixIcon: widget.prefixIcon != null
                  ? Icon(
                      widget.prefixIcon,
                      color: hasError
                          ? theme.colorScheme.error
                          : _hasFocus
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurface.withAlpha(153),
                    )
                  : null,
              suffixIcon: widget.showClearButton && _controller.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: _onClear,
                      color: theme.colorScheme.onSurface.withAlpha(153),
                    )
                  : widget.suffixIcon,
              filled: true,
              fillColor:
                  widget.fillColor ??
                  (isDark
                      ? theme.colorScheme.surface
                      : theme.colorScheme.surface),
              border: OutlineInputBorder(
                borderRadius: widget.borderRadius != null
                    ? widget.borderRadius as BorderRadius
                    : AppTheme.borderRadiusMedium,
                borderSide: BorderSide(
                  color:
                      widget.enabledBorderColor ??
                      theme.colorScheme.outline.withAlpha(128),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: widget.borderRadius != null
                    ? widget.borderRadius as BorderRadius
                    : AppTheme.borderRadiusMedium,
                borderSide: BorderSide(
                  color:
                      widget.enabledBorderColor ??
                      theme.colorScheme.outline.withAlpha(128),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: widget.borderRadius != null
                    ? widget.borderRadius as BorderRadius
                    : AppTheme.borderRadiusMedium,
                borderSide: BorderSide(
                  color: widget.focusedBorderColor ?? theme.colorScheme.primary,
                  width: 2,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: widget.borderRadius != null
                    ? widget.borderRadius as BorderRadius
                    : AppTheme.borderRadiusMedium,
                borderSide: BorderSide(
                  color: widget.errorBorderColor ?? theme.colorScheme.error,
                  width: 2,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: widget.borderRadius != null
                    ? widget.borderRadius as BorderRadius
                    : AppTheme.borderRadiusMedium,
                borderSide: BorderSide(
                  color:
                      widget.disabledBorderColor ??
                      theme.colorScheme.outline.withAlpha(77),
                ),
              ),
              contentPadding:
                  widget.contentPadding ??
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              errorStyle:
                  widget.errorStyle ??
                  TextStyle(fontSize: 14, color: theme.colorScheme.error),
              hintStyle:
                  widget.hintStyle ??
                  TextStyle(
                    fontSize: 16,
                    color: theme.colorScheme.onSurface.withAlpha(128),
                  ),
              counterStyle:
                  widget.counterStyle ??
                  TextStyle(
                    fontSize: 12,
                    color: theme.colorScheme.onSurface.withAlpha(128),
                  ),
            ),
          ),
          if (hasError && widget.showError)
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 4),
              child: Text(
                errorText,
                style:
                    widget.errorStyle ??
                    TextStyle(fontSize: 14, color: theme.colorScheme.error),
              ),
            ),
        ],
      ),
    );
  }
}
