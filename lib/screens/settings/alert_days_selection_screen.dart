import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recording/constants.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/providers/settings_provider.dart';

class AlertDaysSelectionScreen extends StatefulWidget {
  const AlertDaysSelectionScreen({super.key});

  @override
  State<AlertDaysSelectionScreen> createState() =>
      _AlertDaysSelectionScreenState();
}

class _AlertDaysSelectionScreenState extends State<AlertDaysSelectionScreen> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(AppLocalizations.of(context).select_alert_days),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            centerTitle: false,
            elevation: 0,
            pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(24),
            sliver: SliverToBoxAdapter(
              child: Consumer<SettingsProvider>(
                builder: (context, provider, _) {
                  final l10n = AppLocalizations.of(context);
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

                   return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 当前选择显示
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        child: Text(
                          l10n.current_selection(currentValue),
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      
                      // 预置天数选项
                      for (final days in sortedDays)
                        ListTile(
                          leading: Radio<int>(
                            // ignore: deprecated_member_use
                            value: days,
                            // ignore: deprecated_member_use
                            groupValue: currentValue,
                            // ignore: deprecated_member_use
                            onChanged: (int? value) {
                              if (value != null) {
                                provider.setAlertDays(value);
                                Navigator.pop(context);
                              }
                            },
                          ),
                          title: Text(l10n.days_with_value(days)),
                          onTap: () {
                            provider.setAlertDays(days);
                            Navigator.pop(context);
                          },
                        ),



                      // 说明文本
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                           l10n.alert_days_range(AppConstants.minAlertDays, AppConstants.maxAlertDays),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurface.withAlpha(
                              (0.6 * 255).round(),
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
