import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recording/providers/item_list_provider.dart';
import 'package:recording/providers/settings_provider.dart';
import 'package:recording/screens/item_list/item_list_screen.dart';
import 'package:recording/screens/settings/settings_screen.dart';
import 'package:recording/screens/settings/backup_restore_screen.dart';
import 'package:recording/screens/settings/export_import_screen.dart';
import 'package:recording/screens/settings/alerts_settings_screen.dart';
import 'package:recording/screens/settings/about_screen.dart';
import 'package:recording/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ItemListProvider()),
        ChangeNotifierProvider(create: (_) => SettingsProvider()),
      ],
      child: MaterialApp(
        title: '智能物品管理',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (_) => const ItemListScreen(),
          '/settings': (_) => const SettingsScreen(),
          '/settings/backup-restore': (_) => const BackupRestoreScreen(),
          '/settings/export-import': (context) {
            final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
            final initialTab = args?['initialTab'] as String?;
            return ExportImportScreen(initialTab: initialTab);
          },
          '/settings/alerts': (_) => const AlertsSettingsScreen(),
          '/settings/about': (_) => const AboutScreen(),
        },
      ),
    );
  }
}
