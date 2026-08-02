import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/providers/settings_provider.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  // 支持的语言列表
  final List<Locale> supportedLocales = const [
    Locale('zh'), // 简体中文
    Locale('af'), // 南非荷兰语
    Locale('am'), // 阿姆哈拉语
    Locale('ar'), // 阿拉伯语
    Locale('as'), // 阿萨姆语
    Locale('az'), // 阿塞拜疆语
    Locale('bg'), // 保加利亚语
    Locale('bn'), // 孟加拉语
    Locale('bo'), // 藏语
    Locale('bs'), // 波斯尼亚语
    Locale('ca'), // 加泰罗尼亚语
    Locale('cs'), // 捷克语
    Locale('cy'), // 威尔士语
    Locale('da'), // 丹麦语
    Locale('de'), // 德语
    Locale('el'), // 希腊语
    Locale('en'), // 英语
    Locale('es'), // 西班牙语
    Locale('et'), // 爱沙尼亚语
    Locale('fa'), // 波斯语
    Locale('fi'), // 芬兰语
    Locale('fil'), // 菲律宾语
    Locale('fj'), // 斐济语
    Locale('fr'), // 法语
    Locale('ga'), // 爱尔兰语
    Locale('gu'), // 古吉拉特语
    Locale('he'), // 希伯来语
    Locale('hi'), // 印地语
    Locale('hr'), // 克罗地亚语
    Locale('ht'), // 海地克里奥尔语
    Locale('hu'), // 匈牙利语
    Locale('hy'), // 亚美尼亚语
    Locale('id'), // 印度尼西亚语
    Locale('is'), // 冰岛语
    Locale('it'), // 意大利语
    Locale('iu'), // 因纽特语
    Locale('ja'), // 日语
    Locale('kk'), // 哈萨克语
    Locale('km'), // 高棉语
    Locale('kn'), // 卡纳达语
    Locale('ko'), // 韩语
    Locale('ky'), // 柯尔克孜语
    Locale('ms'), // 马来语
    Locale('mww'), // 苗语（白苗文）
    Locale('nl'), // 荷兰语
    Locale('pt'), // 葡萄牙语
    Locale('ru'), // 俄语
    Locale('ta'), // 泰米尔语
    Locale('th'), // 泰语
    Locale('tr'), // 土耳其语
    Locale('ug'), // 维吾尔语
    Locale('uk'), // 乌克兰语
    Locale('vi'), // 越南语
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'), // 繁体中文
    Locale.fromSubtags(languageCode: 'mn', scriptCode: 'Cyrl'), // 蒙古语（西里尔字母）
  ];

  // 获取语言显示名称
  String _getLanguageName(Locale locale) {
    // 处理繁体中文特殊情况
    if (locale.languageCode == 'zh' && locale.scriptCode == 'Hant') {
      return '中文 (繁體)';
    }

    // 处理西里尔蒙古语特殊情况
    if (locale.languageCode == 'mn' && locale.scriptCode == 'Cyrl') {
      return 'Монгол хэл (Кирилл)';
    }

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
      case 'pt':
        return 'Português';
      case 'it':
        return 'Italiano';
      case 'nl':
        return 'Nederlands';
      case 'tr':
        return 'Türkçe';
      case 'vi':
        return 'Tiếng Việt';
      case 'th':
        return 'ไทย';
      case 'hi':
        return 'हिन्दी';
      case 'bn':
        return 'বাংলা';
      case 'id':
        return 'Bahasa Indonesia';
      case 'ms':
        return 'Bahasa Melayu';
      case 'fa':
        return 'فارسی';
      case 'he':
        return 'עברית';
      case 'el':
        return 'Ελληνικά';
      case 'cs':
        return 'Čeština';
      case 'hu':
        return 'Magyar';
      case 'bg':
        return 'Български';
      case 'hr':
        return 'Hrvatski';
      case 'uk':
        return 'Українська';
      case 'az':
        return 'Azərbaycanca';
      case 'kk':
        return 'Қазақ тілі';
      case 'mn':
        return 'Монгол хэл';
      case 'km':
        return 'ភាសាខ្មែរ';
      case 'ta':
        return 'தமிழ்';
      case 'gu':
        return 'ગુજરાતી';
      case 'kn':
        return 'ಕನ್ನಡ';
      case 'am':
        return 'አማርኛ';
      case 'af':
        return 'Afrikaans';
      case 'da':
        return 'Dansk';
      case 'fi':
        return 'Suomi';
      case 'is':
        return 'Íslenska';
      case 'et':
        return 'Eesti';
      case 'as':
        return 'অসমীয়া';
      case 'bo':
        return 'བོད་སྐད་';
      case 'bs':
        return 'Bosanski';
      case 'ca':
        return 'Català';
      case 'cy':
        return 'Cymraeg';
      case 'fil':
        return 'Filipino';
      case 'fj':
        return 'Na Vosa Vakaviti';
      case 'ga':
        return 'Gaeilge';
      case 'ht':
        return 'Kreyòl ayisyen';
      case 'hy':
        return 'Հայերեն';
      case 'iu':
        return 'ᐃᓄᒃᑎᑐᑦ';
      case 'ky':
        return 'Кыргызча';
      case 'mww':
        return 'Hmoob Dawb';
      case 'ug':
        return 'ئۇيغۇرچە';
      default:
        return locale.languageCode.toUpperCase();
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
            title: Text(
              l10n.language_settings,
              style: theme.textTheme.titleLarge,
            ),
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
                            ? Icon(
                                Icons.check,
                                color: theme.colorScheme.primary,
                              )
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
                          leading: Icon(Icons.language),
                          title: Text(_getLanguageName(locale)),
                          subtitle: Text(locale.languageCode.toUpperCase()),
                          trailing:
                              currentLocale?.languageCode == locale.languageCode
                              ? Icon(
                                  Icons.check,
                                  color: theme.colorScheme.primary,
                                )
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
