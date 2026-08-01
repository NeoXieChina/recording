import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/providers/item_list_provider.dart';
import 'package:recording/providers/settings_provider.dart';
import 'package:recording/screens/item_list/item_list_screen.dart';
import 'package:recording/screens/settings/about_screen.dart';
import 'package:recording/screens/settings/alerts_settings_screen.dart';
import 'package:recording/screens/settings/backup_screen.dart';
import 'package:recording/screens/settings/export_screen.dart';
import 'package:recording/screens/settings/import_screen.dart';
import 'package:recording/screens/settings/restore_screen.dart';
import 'package:recording/screens/settings/settings_screen.dart';
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
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Recording App',
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('zh'), // 中文
              Locale('en'), // 英文
            ],
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            routes: {
              '/': (_) => const ItemListScreen(),
              '/settings': (_) => const SettingsScreen(),
              '/settings/backup': (_) => const BackupScreen(),
              '/settings/restore': (_) => const RestoreScreen(),
              '/settings/export': (_) => const ExportScreen(),
              '/settings/import': (_) => const ImportScreen(),
              '/settings/alerts': (_) => const AlertsSettingsScreen(),
              '/settings/about': (_) => const AboutScreen(),
            },
          );
        },
      ),
    );
  }
}
