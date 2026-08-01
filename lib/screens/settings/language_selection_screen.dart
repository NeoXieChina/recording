import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/providers/settings_provider.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  // 支持的语言列表
  final List<Locale> supportedLocales = const [
    Locale('zh'), // 中文
    Locale('en'), // 英语
    Locale('es'), // 西班牙语
    Locale('fr'), // 法语
    Locale('de'), // 德语
    Locale('ja'), // 日语
    Locale('ko'), // 韩语
    Locale('ru'), // 俄语
    Locale('ar'), // 阿拉伯语
  ];

  // 获取语言显示名称
  String _getLanguageName(Locale locale) {
    switch (locale.languageCode) {
      case 'zh':
        return '中文 (简体)';
      case 'en':
        return 'English';
      case 'es':
        return 'Español';
      case 'fr':
        return 'Français';
      case 'de':
        return 'Deutsch';
      case 'ja':
        return '日本語';
      case 'ko':
        return '한국어';
      case 'ru':
        return 'Русский';
      case 'ar':
        return 'العربية';
      default:
        return locale.languageCode.toUpperCase();
    }
  }

  // 获取语言标志
  String _getLanguageFlag(Locale locale) {
    switch (locale.languageCode) {
      case 'zh':
        return '🇨🇳';
      case 'en':
        return '🇺🇸';
      case 'es':
        return '🇪🇸';
      case 'fr':
        return '🇫🇷';
      case 'de':
        return '🇩🇪';
      case 'ja':
        return '🇯🇵';
      case 'ko':
        return '🇰🇷';
      case 'ru':
        return '🇷🇺';
      case 'ar':
        return '🇸🇦';
      default:
        return '🌐';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(l10n.language_settings, style: theme.textTheme.titleLarge),
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
                  final currentLocale = provider.locale;
                  
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 系统默认选项
                      ListTile(
                        leading: const Icon(Icons.language),
                        title: Text(l10n.system_default),
                        subtitle: Text(l10n.use_system_language),
                        trailing: currentLocale == null
                            ? Icon(Icons.check, color: theme.colorScheme.primary)
                            : null,
                        onTap: () {
                          provider.setLocale(null);
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      
                      // 语言选项列表
                      for (final locale in supportedLocales)
                        ListTile(
                          leading: Text(
                            _getLanguageFlag(locale),
                            style: const TextStyle(fontSize: 24),
                          ),
                          title: Text(_getLanguageName(locale)),
                          subtitle: Text(locale.languageCode.toUpperCase()),
                          trailing: currentLocale?.languageCode == locale.languageCode
                              ? Icon(Icons.check, color: theme.colorScheme.primary)
                              : null,
                          onTap: () {
                            provider.setLocale(locale);
                            Navigator.pop(context);
                          },
                        ),
                      
                      const SizedBox(height: 16),
                      
                      // 说明文本
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          l10n.language_change_hint,
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