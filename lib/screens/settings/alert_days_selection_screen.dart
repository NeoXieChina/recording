import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recording/constants.dart';
import 'package:recording/providers/settings_provider.dart';

class AlertDaysSelectionScreen extends StatefulWidget {
  const AlertDaysSelectionScreen({super.key});

  @override
  State<AlertDaysSelectionScreen> createState() => _AlertDaysSelectionScreenState();
}

class _AlertDaysSelectionScreenState extends State<AlertDaysSelectionScreen> {
  // 显示自定义天数输入对话框
  void _showCustomDaysDialog(BuildContext context, SettingsProvider provider) {
    final controller = TextEditingController(text: provider.alertDays.toString());
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('自定义提醒天数'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: '请输入提醒天数',
            labelText: '天数',
          ),
          keyboardType: TextInputType.number,
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              final text = controller.text.trim();
              if (text.isEmpty) {
                Navigator.pop(context);
                return;
              }
              final days = int.tryParse(text);
              if (days != null && days >= AppConstants.minAlertDays && days <= AppConstants.maxAlertDays) {
                provider.setAlertDays(days);
                Navigator.pop(context);
                Navigator.pop(context); // 返回上一级页面
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('请输入${AppConstants.minAlertDays}-${AppConstants.maxAlertDays}之间的数字'),
                  ),
                );
                // 不关闭对话框，让用户继续编辑
              }
            },
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('选择提醒天数'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Consumer<SettingsProvider>(
        builder: (context, provider, _) {
          final currentValue = provider.alertDays;
          
          // 创建预置天数选项（1-30天）
          final predefinedDays = List<int>.generate(
            30, // 预置1-30天
            (i) => i + 1,
          );
          
          // 创建所有要显示的天数选项
          final daysToShow = <int>{};
          
          // 添加预置天数（1-30天）
          daysToShow.addAll(predefinedDays);
          
          // 如果当前值不在1-30范围内，也添加到列表中
          if (currentValue >= AppConstants.minAlertDays && 
              currentValue <= AppConstants.maxAlertDays &&
              !predefinedDays.contains(currentValue)) {
            daysToShow.add(currentValue);
          }
          
          // 排序
          final sortedDays = daysToShow.toList()..sort();
          
          return ListView(
            children: [
              // 预置天数选项
              for (final days in sortedDays)
                ListTile(
                  title: Text('$days天'),
                  trailing: days == currentValue
                      ? Icon(Icons.check, color: theme.colorScheme.primary)
                      : null,
                  onTap: () {
                    provider.setAlertDays(days);
                    Navigator.pop(context);
                  },
                ),
              
              // 自定义选项
              ListTile(
                title: const Text('自定义'),
                subtitle: currentValue > 30 || currentValue < 1
                    ? Text('自定义（$currentValue天）')
                    : null,
                trailing: currentValue > 30 || currentValue < 1
                    ? Icon(Icons.check, color: theme.colorScheme.primary)
                    : null,
                onTap: () {
                  _showCustomDaysDialog(context, provider);
                },
              ),
              
              // 说明文本
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '提醒天数范围：${AppConstants.minAlertDays}-${AppConstants.maxAlertDays}天',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withAlpha((0.6 * 255).round()),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}