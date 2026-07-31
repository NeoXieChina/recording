import 'package:flutter/material.dart';
import 'package:recording/constants.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('关于')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.info,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  '应用信息',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('应用名称'),
              trailing: Text(AppConstants.appName),
            ),
            const ListTile(
              title: Text('版本'),
              trailing: Text('1.0.0'),
            ),
            const ListTile(
              title: Text('开发者'),
              trailing: Text('智能物品管理团队'),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Icon(
                  Icons.description,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  '功能介绍',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              '智能物品管理应用，帮助您管理物品的过期日期、保修日期等信息，并提供智能提醒功能。',
            ),
          ],
        ),
      ),
    );
  }
}