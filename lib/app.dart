import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/providers/item_list_provider.dart';
import 'package:recording/providers/settings_provider.dart';
import 'package:recording/routes.dart';
import 'package:recording/screens/item_list/item_master_detail_screen.dart';
import 'package:recording/screens/settings/about_screen.dart';
import 'package:recording/screens/settings/alerts_settings_screen.dart';
import 'package:recording/screens/settings/backup_screen.dart';
import 'package:recording/screens/settings/export_screen.dart';
import 'package:recording/screens/settings/import_screen.dart';
import 'package:recording/screens/settings/language_selection_screen.dart';
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
        ChangeNotifierProvider(
          create: (_) {
            final provider = SettingsProvider();
            // 异步加载保存的语言设置
            provider.loadLocale();
            // 异步加载提醒设置
            provider.initAlertSettings();
            return provider;
          },
        ),
      ],
      child: Builder(
        builder: (context) {
          return Consumer<SettingsProvider>(
            builder: (context, settingsProvider, _) {
              return MaterialApp(
                title: 'Recording App',
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                locale: settingsProvider.locale,
                supportedLocales: AppLocalizations.supportedLocales,
                localeResolutionCallback: (locale, supportedLocales) {
                  // 如果用户选择了语言，使用用户选择的语言
                  if (settingsProvider.locale != null) {
                    return settingsProvider.locale;
                  }

                  // 否则使用系统语言，如果系统语言不支持则使用英语
                  if (locale != null) {
                    for (var supportedLocale in supportedLocales) {
                      if (supportedLocale.languageCode == locale.languageCode) {
                        return supportedLocale;
                      }
                    }
                  }

                  // 默认使用英语
                  return const Locale('en');
                },
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                themeMode: ThemeMode.system,
                debugShowCheckedModeBanner: false,
                home: const ItemMasterDetailScreen(),
                routes: {
                  '/settings': (_) => const SettingsScreen(),
                  '/settings/backup': (_) => const BackupScreen(),
                  '/settings/restore': (_) => const RestoreScreen(),
                  '/settings/export': (_) => const ExportScreen(),
                  '/settings/import': (_) => const ImportScreen(),
                  '/settings/alerts': (_) => const AlertsSettingsScreen(),
                  '/settings/about': (_) => const AboutScreen(),
                  AppRoutes.languageSettings: (_) =>
                      const LanguageSelectionScreen(),
                },
              );
            },
          );
        },
      ),
    );
  }
}
