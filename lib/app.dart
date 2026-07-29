import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recording/providers/item_list_provider.dart';
import 'package:recording/providers/settings_provider.dart';
import 'package:recording/screens/item_list/item_list_screen.dart';
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
        },
      ),
    );
  }
}
