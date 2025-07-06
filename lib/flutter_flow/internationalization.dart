import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ru', 'kk', 'zh_Hans'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ruText = '',
    String? kkText = '',
    String? zh_HansText = '',
  }) =>
      [ruText, kkText, zh_HansText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // mainpage
  {
    '5mytyeki': {
      'ru': 'QAZBOOKING',
      'kk': 'QAZBOOKING',
      'zh_Hans': '卡塔尔预订',
    },
    'chh09pn3': {
      'ru': 'Базы отдыха',
      'kk': 'Демалыс орталығы',
      'zh_Hans': '娱乐中心',
    },
    'oi4uaxkr': {
      'ru': '  Туры',
      'kk': 'Турлар',
      'zh_Hans': '旅游',
    },
    '06y1bivj': {
      'ru': 'Всё для отдыха',
      'kk': 'Барлығы демалу үшін',
      'zh_Hans': '一切为了放松',
    },
    '8kysbzea': {
      'ru': 'Home',
      'kk': 'Басты бет',
      'zh_Hans': '家',
    },
  },
  // bazaotdiharesults
  {
    'jdjzf149': {
      'ru': 'Поиск базы отдыха',
      'kk': '(1) демалыс орталықтары табылды',
      'zh_Hans': '找到 (1) 个休闲中心',
    },
    '0h0ncz48': {
      'ru': 'Фильтр',
      'kk': '',
      'zh_Hans': '',
    },
    'r2wx77rn': {
      'ru': 'Home',
      'kk': 'Басты бет',
      'zh_Hans': '家',
    },
  },
  // adminpanel
  {
    '3kaul3lw': {
      'ru': 'QAZBOOKING',
      'kk': '',
      'zh_Hans': '',
    },
    'f67khjsu': {
      'ru': 'Калькулятор',
      'kk': '',
      'zh_Hans': '',
    },
    'hb9cce0i': {
      'ru': 'Открыть калькулятор',
      'kk': '',
      'zh_Hans': '',
    },
    '5god6hbh': {
      'ru': 'Главная страница',
      'kk': '',
      'zh_Hans': '',
    },
    '9u4st19c': {
      'ru': 'Заявки',
      'kk': '',
      'zh_Hans': '',
    },
    '89b5n3o5': {
      'ru': 'Шахматка',
      'kk': '',
      'zh_Hans': '',
    },
    'pvm22a7n': {
      'ru': 'Открыть шахматку',
      'kk': '',
      'zh_Hans': '',
    },
    '5mkn4sej': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // Auth2
  {
    'kcaqvxw4': {
      'ru': 'Клиент',
      'kk': '',
      'zh_Hans': '',
    },
    '0rhznc1e': {
      'ru': 'Войти',
      'kk': '',
      'zh_Hans': '',
    },
    'cur57s9y': {
      'ru': 'КАК КЛИЕНТ',
      'kk': '',
      'zh_Hans': '',
    },
    'g4dman9m': {
      'ru': 'Email',
      'kk': '',
      'zh_Hans': '',
    },
    '66x3z3hr': {
      'ru': 'Пароль',
      'kk': '',
      'zh_Hans': '',
    },
    'zfhx2aby': {
      'ru': 'Войти',
      'kk': '',
      'zh_Hans': '',
    },
    'ztoz5rah': {
      'ru': 'Или войти с ',
      'kk': '',
      'zh_Hans': '',
    },
    'kxyf7usi': {
      'ru': ' Google',
      'kk': '',
      'zh_Hans': '',
    },
    'jhd0o6p8': {
      'ru': 'Apple',
      'kk': '',
      'zh_Hans': '',
    },
    'cgug7fqs': {
      'ru': 'Админ',
      'kk': '',
      'zh_Hans': '',
    },
    'p5p00085': {
      'ru': 'Войти',
      'kk': '',
      'zh_Hans': '',
    },
    'hwvhdmru': {
      'ru': 'КАК АДМИН',
      'kk': '',
      'zh_Hans': '',
    },
    'uvl7g83a': {
      'ru': 'Email',
      'kk': '',
      'zh_Hans': '',
    },
    '6sy5h96m': {
      'ru': 'Пароль',
      'kk': '',
      'zh_Hans': '',
    },
    'yxs7y6ke': {
      'ru': 'Войти',
      'kk': '',
      'zh_Hans': '',
    },
    'o7d2l1x1': {
      'ru': 'Или войти с ',
      'kk': '',
      'zh_Hans': '',
    },
    'fmi9z5qj': {
      'ru': 'Google',
      'kk': '',
      'zh_Hans': '',
    },
    'c1b8kzod': {
      'ru': 'Apple',
      'kk': '',
      'zh_Hans': '',
    },
    'jdlboivm': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // zayakitest
  {
    '2mmv4qz1': {
      'ru': 'Заявки',
      'kk': '',
      'zh_Hans': '',
    },
    'bha4am43': {
      'ru': 'Выберите категорию заявок',
      'kk': '',
      'zh_Hans': '',
    },
    'jkpi74qr': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'ykufo123': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    '4rdwgcs2': {
      'ru': 'Туры',
      'kk': '',
      'zh_Hans': '',
    },
    'lw82tqg6': {
      'ru': 'Агентства',
      'kk': '',
      'zh_Hans': '',
    },
    'rxkc2hdv': {
      'ru': 'Еда',
      'kk': '',
      'zh_Hans': '',
    },
    'vpd2qdc1': {
      'ru': 'Развлечения',
      'kk': '',
      'zh_Hans': '',
    },
    'a1zhanea': {
      'ru': 'Транспорт',
      'kk': '',
      'zh_Hans': '',
    },
    'oyw9wdvp': {
      'ru': 'Выберите зону отдыха',
      'kk': '',
      'zh_Hans': '',
    },
    'h9ybq4fs': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    '8vupxjmb': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    '8lljvxqo': {
      'ru': 'Акши',
      'kk': '',
      'zh_Hans': '',
    },
    'j3re4iks': {
      'ru': 'Кабанбай',
      'kk': '',
      'zh_Hans': '',
    },
    'gfbifkky': {
      'ru': 'Коктума',
      'kk': '',
      'zh_Hans': '',
    },
    'bjpntij4': {
      'ru': 'Перейти',
      'kk': '',
      'zh_Hans': '',
    },
    'i01v2va9': {
      'ru': 'Базы отдыха',
      'kk': '',
      'zh_Hans': '',
    },
    '1f3biauk': {
      'ru': 'Перейти ',
      'kk': '',
      'zh_Hans': '',
    },
    'tuo7kvt8': {
      'ru': 'Заявки',
      'kk': '',
      'zh_Hans': '',
    },
    'b4pitcgr': {
      'ru': 'Shop',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // bazaotdihapodkl
  {
    '63adjbjr': {
      'ru': 'Ваше имя',
      'kk': '',
      'zh_Hans': '',
    },
    '3ege9ik3': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'tdnnd7z5': {
      'ru': 'Название б/о',
      'kk': '',
      'zh_Hans': '',
    },
    'p4mkg1kb': {
      'ru': 'Номер телефона',
      'kk': '',
      'zh_Hans': '',
    },
    '00onjj3s': {
      'ru': '7**********',
      'kk': '',
      'zh_Hans': '',
    },
    'v3qlplxo': {
      'ru': 'Эл. почта',
      'kk': '',
      'zh_Hans': '',
    },
    'dzdmez29': {
      'ru': 'Бассейн',
      'kk': '',
      'zh_Hans': '',
    },
    'p64t93md': {
      'ru': 'Детская площадка',
      'kk': '',
      'zh_Hans': '',
    },
    'khon2qyc': {
      'ru': 'Кафе/бар/танцпол',
      'kk': '',
      'zh_Hans': '',
    },
    'cfsbggbz': {
      'ru': 'Паркинг',
      'kk': '',
      'zh_Hans': '',
    },
    '94pi8gp4': {
      'ru': 'Трансфер со станции',
      'kk': '',
      'zh_Hans': '',
    },
    'o0zip0dy': {
      'ru': 'Стоимость на \n1 чел в сутки',
      'kk': '',
      'zh_Hans': '',
    },
    '9m9acj50': {
      'ru': 'Описание',
      'kk': '',
      'zh_Hans': '',
    },
    'fa2ads5e': {
      'ru': 'Расположение',
      'kk': '',
      'zh_Hans': '',
    },
    'd8goo6ab': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'ye869iiy': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'gs7tdo5t': {
      'ru': 'Акши',
      'kk': '',
      'zh_Hans': '',
    },
    's5v5umok': {
      'ru': 'Кабанбай',
      'kk': '',
      'zh_Hans': '',
    },
    '2fg5utvi': {
      'ru': 'Коктума',
      'kk': '',
      'zh_Hans': '',
    },
    '2n4pizj9': {
      'ru': 'Удаленность от берега',
      'kk': '',
      'zh_Hans': '',
    },
    '1fx3z6cx': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'nzjk6yrf': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    '07rlcqe5': {
      'ru': '50',
      'kk': '',
      'zh_Hans': '',
    },
    'kwe3rfv7': {
      'ru': '100',
      'kk': '',
      'zh_Hans': '',
    },
    '4jkqfxwr': {
      'ru': '150',
      'kk': '',
      'zh_Hans': '',
    },
    'zu0g3y3r': {
      'ru': '200',
      'kk': '',
      'zh_Hans': '',
    },
    'ks8j52oz': {
      'ru': '250',
      'kk': '',
      'zh_Hans': '',
    },
    '1lee263v': {
      'ru': '300',
      'kk': '',
      'zh_Hans': '',
    },
    'veikr1dm': {
      'ru': 'Выбрать сторону берега',
      'kk': '',
      'zh_Hans': '',
    },
    'rntxcya0': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    '8thchc2f': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    '4vt46ioz': {
      'ru': 'Левый',
      'kk': '',
      'zh_Hans': '',
    },
    'n1gij12k': {
      'ru': 'Правый',
      'kk': '',
      'zh_Hans': '',
    },
    'ka33fsfk': {
      'ru': 'Расстояние от Арбата',
      'kk': '',
      'zh_Hans': '',
    },
    'ysx82mda': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    '9mjpsc7l': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'ilc5e5ex': {
      'ru': '50',
      'kk': '',
      'zh_Hans': '',
    },
    '1iolstm2': {
      'ru': '100',
      'kk': '',
      'zh_Hans': '',
    },
    '0b0v9tbk': {
      'ru': '150',
      'kk': '',
      'zh_Hans': '',
    },
    'ilcumh68': {
      'ru': '200',
      'kk': '',
      'zh_Hans': '',
    },
    '18te7xg7': {
      'ru': '250',
      'kk': '',
      'zh_Hans': '',
    },
    '41n3ho4j': {
      'ru': '300',
      'kk': '',
      'zh_Hans': '',
    },
    '855ag587': {
      'ru': 'Добавить фотографию',
      'kk': '',
      'zh_Hans': '',
    },
    'mpzv4p9h': {
      'ru': 'Отправить',
      'kk': '',
      'zh_Hans': '',
    },
    'fquw30x0': {
      'ru': 'Подключить базу отдыха',
      'kk': '',
      'zh_Hans': '',
    },
    '5c2654br': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // wishList
  {
    'pwe48c47': {
      'ru': 'Избранные',
      'kk': '',
      'zh_Hans': '',
    },
    'y923v34q': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // addClient
  {
    'v760uaq8': {
      'ru': 'Номер брони',
      'kk': '',
      'zh_Hans': '',
    },
    '7ujouicd': {
      'ru': 'Номер брони',
      'kk': '',
      'zh_Hans': '',
    },
    'htewel3n': {
      'ru': 'Номер объекта',
      'kk': '',
      'zh_Hans': '',
    },
    '7tmexe9e': {
      'ru': 'Выбрать ',
      'kk': '',
      'zh_Hans': '',
    },
    'r5enrjyz': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'sqq6ftnq': {
      'ru': 'Дата/время заезда',
      'kk': '',
      'zh_Hans': '',
    },
    'fylwzjmb': {
      'ru': 'Дата/время выезда',
      'kk': '',
      'zh_Hans': '',
    },
    '759mbwml': {
      'ru': 'Выберите класс',
      'kk': '',
      'zh_Hans': '',
    },
    'lfq08c3e': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'ddmdr2ux': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    '2kxv7sc1': {
      'ru': 'Эконом',
      'kk': '',
      'zh_Hans': '',
    },
    '2ncyxvdn': {
      'ru': 'Стандарт',
      'kk': '',
      'zh_Hans': '',
    },
    '8yy8pa4v': {
      'ru': 'Люкс',
      'kk': '',
      'zh_Hans': '',
    },
    '7ejm93ak': {
      'ru': 'Взрослых',
      'kk': '',
      'zh_Hans': '',
    },
    'z73b9phs': {
      'ru': 'ФИО',
      'kk': '',
      'zh_Hans': '',
    },
    '8k2o1kfg': {
      'ru': '7**********',
      'kk': '',
      'zh_Hans': '',
    },
    'hob0hz27': {
      'ru': 'Сумма брони',
      'kk': '',
      'zh_Hans': '',
    },
    'ewfbeaga': {
      'ru': 'Сумма брони',
      'kk': '',
      'zh_Hans': '',
    },
    'fnk0yd27': {
      'ru': 'Стоимость \nпроживания',
      'kk': '',
      'zh_Hans': '',
    },
    'knnkmvkq': {
      'ru': 'Остаток',
      'kk': '',
      'zh_Hans': '',
    },
    't1twmvpe': {
      'ru': 'Трансфер',
      'kk': '',
      'zh_Hans': '',
    },
    'btgzx8zt': {
      'ru': 'Выбрать транспорт',
      'kk': '',
      'zh_Hans': '',
    },
    'dqqia7xo': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'v3onqicp': {
      'ru': 'Автобус',
      'kk': '',
      'zh_Hans': '',
    },
    '71qhuxej': {
      'ru': 'Поезд',
      'kk': '',
      'zh_Hans': '',
    },
    'lhrv1rxj': {
      'ru': 'Самолет',
      'kk': '',
      'zh_Hans': '',
    },
    'jvgnjhjv': {
      'ru': 'Прибытие/Убытие',
      'kk': '',
      'zh_Hans': '',
    },
    '8o4cijbe': {
      'ru': '-',
      'kk': '',
      'zh_Hans': '',
    },
    'sotonnpw': {
      'ru': 'Сохранить',
      'kk': '',
      'zh_Hans': '',
    },
    'xjxtxlkn': {
      'ru': 'Рассчитать',
      'kk': '',
      'zh_Hans': '',
    },
    'oivq12q8': {
      'ru': 'Добавить клиента',
      'kk': '',
      'zh_Hans': '',
    },
    'trbq9oed': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // addroom
  {
    'btedktqn': {
      'ru': 'Номер объекта',
      'kk': '',
      'zh_Hans': '',
    },
    'vvjemm7j': {
      'ru': 'Категория объекта',
      'kk': '',
      'zh_Hans': '',
    },
    '9mshlg1t': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'skw67fij': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'b7igbzvs': {
      'ru': 'Отдельный домик',
      'kk': '',
      'zh_Hans': '',
    },
    '50x5j0nj': {
      'ru': 'Номер',
      'kk': '',
      'zh_Hans': '',
    },
    'wmscu7h0': {
      'ru': 'Класс',
      'kk': '',
      'zh_Hans': '',
    },
    '6dukyrw2': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'p3uubeum': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'tipo6xl3': {
      'ru': ' Эконом',
      'kk': '',
      'zh_Hans': '',
    },
    '5p5auj6y': {
      'ru': 'Стандарт',
      'kk': '',
      'zh_Hans': '',
    },
    'dqzy5i98': {
      'ru': 'Люкс',
      'kk': '',
      'zh_Hans': '',
    },
    '8e1tgbzm': {
      'ru': 'Количество койко-мест',
      'kk': '',
      'zh_Hans': '',
    },
    'hxk4w1nj': {
      'ru': 'Санузел',
      'kk': '',
      'zh_Hans': '',
    },
    's3clkyfo': {
      'ru': 'Кондиционер',
      'kk': '',
      'zh_Hans': '',
    },
    'lo8xhgag': {
      'ru': 'Холодильник',
      'kk': '',
      'zh_Hans': '',
    },
    'x1ntgzi2': {
      'ru': 'Сохранить',
      'kk': '',
      'zh_Hans': '',
    },
    'uj8nxh2n': {
      'ru': 'Добавить номер',
      'kk': '',
      'zh_Hans': '',
    },
    '6aeabilc': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // calculator2Admin
  {
    'kmnmpezz': {
      'ru': 'Рассчитать стоимость',
      'kk': '',
      'zh_Hans': '',
    },
    '4tozu6hq': {
      'ru': 'Выберите класс',
      'kk': '',
      'zh_Hans': '',
    },
    '8uh68sta': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'xvxahw92': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    '4rm7tmha': {
      'ru': 'Эконом',
      'kk': '',
      'zh_Hans': '',
    },
    '2pcerakv': {
      'ru': 'Стандарт',
      'kk': '',
      'zh_Hans': '',
    },
    'mpuh2avx': {
      'ru': 'Люкс',
      'kk': '',
      'zh_Hans': '',
    },
    'f3qnxzzy': {
      'ru': 'Дата/время заезда',
      'kk': '',
      'zh_Hans': '',
    },
    'y20lvyah': {
      'ru': 'Дата/время выезда',
      'kk': '',
      'zh_Hans': '',
    },
    'k3qghcze': {
      'ru': 'Взрослые',
      'kk': '',
      'zh_Hans': '',
    },
    'pmpil8cw': {
      'ru': 'Рассчитать',
      'kk': '',
      'zh_Hans': '',
    },
    'yxc0fgok': {
      'ru': 'Калькулятор',
      'kk': '',
      'zh_Hans': '',
    },
    'hx1e0kmz': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // shakhmatkaAdmin
  {
    'coo1p9va': {
      'ru': 'Эконом',
      'kk': '',
      'zh_Hans': '',
    },
    '28ycf7lb': {
      'ru': 'Стандарт',
      'kk': '',
      'zh_Hans': '',
    },
    'e9j2vl6i': {
      'ru': 'Люкс',
      'kk': '',
      'zh_Hans': '',
    },
    'p79sasqr': {
      'ru': 'Добавить клиента',
      'kk': '',
      'zh_Hans': '',
    },
    'ugsnhggc': {
      'ru': 'Добавить номер',
      'kk': '',
      'zh_Hans': '',
    },
    '70pplsr5': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // calculatorCopy
  {
    'zb9q8ul8': {
      'ru': 'Период',
      'kk': 'Кезең',
      'zh_Hans': '时期',
    },
    '15xeju1v': {
      'ru': '-',
      'kk': '-',
      'zh_Hans': '-',
    },
    'rnrqshgo': {
      'ru': 'Возрастная категория',
      'kk': '',
      'zh_Hans': '',
    },
    'hicvpm8r': {
      'ru': 'Взрослые',
      'kk': 'Ересектер',
      'zh_Hans': '成年人',
    },
    '2wmvux1e': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'x8l5tqef': {
      'ru': '#',
      'kk': '',
      'zh_Hans': '',
    },
    '2opyb27g': {
      'ru': '-',
      'kk': '-',
      'zh_Hans': '-',
    },
    '0r3hy4q0': {
      'ru': '#',
      'kk': '',
      'zh_Hans': '',
    },
    '8whkvm8p': {
      'ru': 'Подростки',
      'kk': 'Балалар',
      'zh_Hans': '孩子们',
    },
    'erc4c8a5': {
      'ru': '#',
      'kk': '#',
      'zh_Hans': '#',
    },
    '1nb9i93s': {
      'ru': '-',
      'kk': '-',
      'zh_Hans': '-',
    },
    'ldz13jga': {
      'ru': '#',
      'kk': '#',
      'zh_Hans': '#',
    },
    'n5thww6w': {
      'ru': 'Дети',
      'kk': 'Балалар',
      'zh_Hans': '孩子们',
    },
    '286a1ppx': {
      'ru': '#',
      'kk': '#',
      'zh_Hans': '#',
    },
    'sp0dj84q': {
      'ru': '-',
      'kk': '-',
      'zh_Hans': '-',
    },
    'vr5gfeyc': {
      'ru': '#',
      'kk': '#',
      'zh_Hans': '#',
    },
    'zprhjnip': {
      'ru': 'Младенцы',
      'kk': 'Балалар',
      'zh_Hans': '孩子们',
    },
    'rd15g0pe': {
      'ru': '#',
      'kk': '#',
      'zh_Hans': '#',
    },
    '4zax4fe1': {
      'ru': '-',
      'kk': '-',
      'zh_Hans': '-',
    },
    'c9g4kjo8': {
      'ru': '#',
      'kk': '#',
      'zh_Hans': '#',
    },
    'noj6vrq5': {
      'ru': 'Классы',
      'kk': 'Сабақтар',
      'zh_Hans': '课程',
    },
    't4z9b9eh': {
      'ru': 'Эконом',
      'kk': 'Экономика',
      'zh_Hans': '经济',
    },
    'ay2dwncv': {
      'ru': 'Взрослые',
      'kk': '',
      'zh_Hans': '',
    },
    'ngogz6d1': {
      'ru': 'Цена:',
      'kk': '',
      'zh_Hans': '',
    },
    '14e5m8zk': {
      'ru': 'Дети',
      'kk': '',
      'zh_Hans': '',
    },
    '429pxldl': {
      'ru': 'Цена:',
      'kk': '',
      'zh_Hans': '',
    },
    '4w5nykkn': {
      'ru': 'Дети',
      'kk': '',
      'zh_Hans': '',
    },
    'kpl07soy': {
      'ru': 'Цена:',
      'kk': '',
      'zh_Hans': '',
    },
    'n1r7s4a4': {
      'ru': 'Дети',
      'kk': '',
      'zh_Hans': '',
    },
    'xu0cjpaj': {
      'ru': 'Цена:',
      'kk': '',
      'zh_Hans': '',
    },
    'kkxmvoiu': {
      'ru': 'Стандарт',
      'kk': 'Стандартты',
      'zh_Hans': '标准',
    },
    'vwzqdipz': {
      'ru': 'Взрослые',
      'kk': '',
      'zh_Hans': '',
    },
    'ng37127m': {
      'ru': 'Цена:',
      'kk': '',
      'zh_Hans': '',
    },
    '8aay6sxx': {
      'ru': 'Дети',
      'kk': '',
      'zh_Hans': '',
    },
    '7oszyxbi': {
      'ru': 'Цена:',
      'kk': '',
      'zh_Hans': '',
    },
    'pdhe23za': {
      'ru': 'Дети',
      'kk': '',
      'zh_Hans': '',
    },
    'dr5cr11v': {
      'ru': 'Цена:',
      'kk': '',
      'zh_Hans': '',
    },
    'zdchbxsc': {
      'ru': 'Дети',
      'kk': '',
      'zh_Hans': '',
    },
    'exni7f3v': {
      'ru': 'Цена:',
      'kk': '',
      'zh_Hans': '',
    },
    'osopd8qg': {
      'ru': 'Люкс',
      'kk': 'Люкс',
      'zh_Hans': '勒克斯',
    },
    'nnlgmrsa': {
      'ru': 'Взрослые',
      'kk': '',
      'zh_Hans': '',
    },
    'i042wlij': {
      'ru': 'Цена:',
      'kk': '',
      'zh_Hans': '',
    },
    '9egadpse': {
      'ru': 'Дети',
      'kk': '',
      'zh_Hans': '',
    },
    'w1cxbfss': {
      'ru': 'Цена:',
      'kk': '',
      'zh_Hans': '',
    },
    'aiulznou': {
      'ru': 'Дети',
      'kk': '',
      'zh_Hans': '',
    },
    'tz5z4ym4': {
      'ru': 'Цена:',
      'kk': '',
      'zh_Hans': '',
    },
    'sm3t5ahf': {
      'ru': 'Дети',
      'kk': '',
      'zh_Hans': '',
    },
    'u9xwgong': {
      'ru': 'Цена:',
      'kk': '',
      'zh_Hans': '',
    },
    'swy69nnx': {
      'ru': 'Периоды',
      'kk': 'Кезеңдер тізімі',
      'zh_Hans': '时期列表',
    },
    '9iu8kmd6': {
      'ru': 'Калькулятор',
      'kk': 'Сақтау',
      'zh_Hans': '节省',
    },
    '6vebyd2z': {
      'ru': 'Сохранить ',
      'kk': 'Сақтау',
      'zh_Hans': '节省',
    },
    'lejmse00': {
      'ru': 'Home',
      'kk': 'Үй',
      'zh_Hans': '家',
    },
  },
  // Errorpage
  {
    'k2b2n5o3': {
      'ru': 'Упс!',
      'kk': '',
      'zh_Hans': '',
    },
    't5dvh3dd': {
      'ru': 'Приносим извинения',
      'kk': '',
      'zh_Hans': '',
    },
    'f053tupi': {
      'ru': 'Страница находится в\n Разработке 🛠️',
      'kk': '',
      'zh_Hans': '',
    },
    'f3edu4yw': {
      'ru': 'Вернуться назад',
      'kk': '',
      'zh_Hans': '',
    },
    'ipga18y3': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // shakhmatkaClient
  {
    'gqad536r': {
      'ru': 'Эконом',
      'kk': '',
      'zh_Hans': '',
    },
    'kd42458t': {
      'ru': 'Стандарт',
      'kk': '',
      'zh_Hans': '',
    },
    'go5f9w2o': {
      'ru': 'Люкс',
      'kk': '',
      'zh_Hans': '',
    },
    'to62r0mo': {
      'ru': '- Выезд ',
      'kk': '',
      'zh_Hans': '',
    },
    'b6id3s64': {
      'ru': '- Занято',
      'kk': '',
      'zh_Hans': '',
    },
    '4ivcbifx': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // adminprofile
  {
    'gfcojfvu': {
      'ru': 'Выйти',
      'kk': '',
      'zh_Hans': '',
    },
    'wtamio7o': {
      'ru':
          'Пользовательское соглашение, политика конфиденциальности и публичная оферта',
      'kk': '',
      'zh_Hans': '',
    },
    'hypkgeb6': {
      'ru': 'Поддержка',
      'kk': '',
      'zh_Hans': '',
    },
    'vnjjsjgv': {
      'ru': 'Добавить базу отдыха',
      'kk': '',
      'zh_Hans': '',
    },
    't25mxk1g': {
      'ru': 'Удалить аккаунт',
      'kk': '',
      'zh_Hans': '',
    },
    '452hyl8y': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // PeriodChanger
  {
    'omibzti9': {
      'ru': 'Назад',
      'kk': '',
      'zh_Hans': '',
    },
    'wd8d3ilq': {
      'ru': 'Взрослые:',
      'kk': '',
      'zh_Hans': '',
    },
    '31fcu10x': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // nonauthorized
  {
    '2935qv31': {
      'ru':
          'Войдите в профиль, чтобы можно было видеть номера телефонов, наличие мест и пользоваться  калькулятором',
      'kk': '',
      'zh_Hans': '',
    },
    '20eo1m5l': {
      'ru': 'Войти как клиент',
      'kk': '',
      'zh_Hans': '',
    },
    'z15brpwk': {
      'ru': 'Войти ',
      'kk': '',
      'zh_Hans': '',
    },
    'okjvh1pc': {
      'ru': 'Войти как администратор',
      'kk': '',
      'zh_Hans': '',
    },
    '7u5o7ubt': {
      'ru': 'Войти в личный кабинет',
      'kk': '',
      'zh_Hans': '',
    },
    'dbz0msmk': {
      'ru':
          'Пользовательское соглашение, политика конфиденциальности и публичная оферта',
      'kk': '',
      'zh_Hans': '',
    },
    't9f42jhs': {
      'ru': 'Поддержка',
      'kk': '',
      'zh_Hans': '',
    },
    'wjge7l6p': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // prosmotrGuest
  {
    'fgm87r3v': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // clientprofile
  {
    't5jrufq0': {
      'ru': 'Выйти',
      'kk': '',
      'zh_Hans': '',
    },
    'e0v5eugp': {
      'ru':
          'Пользовательское соглашение, политика конфиденциальности и публичная оферта',
      'kk': '',
      'zh_Hans': '',
    },
    'wjyb7yh2': {
      'ru': 'Поддержка',
      'kk': '',
      'zh_Hans': '',
    },
    'ovst66e6': {
      'ru': 'Удалить аккаунт',
      'kk': '',
      'zh_Hans': '',
    },
    'fq3lax54': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // Kaspi
  {
    'stmt2twe': {
      'ru': 'Оплата',
      'kk': '',
      'zh_Hans': '',
    },
    'mcj5b5at': {
      'ru': 'Home',
      'kk': 'Басты бет',
      'zh_Hans': '家',
    },
  },
  // mainpageclient
  {
    '6nqh6hs5': {
      'ru': 'QAZBOOKING',
      'kk': '',
      'zh_Hans': '',
    },
    'kpab3upc': {
      'ru': 'Базы отдыха',
      'kk': '',
      'zh_Hans': '',
    },
    'dl5ffap3': {
      'ru': '  Туры',
      'kk': '',
      'zh_Hans': '',
    },
    '8afbz74l': {
      'ru': 'Всё для отдыха',
      'kk': '',
      'zh_Hans': '',
    },
    'jmfv795l': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // mainpageadmin
  {
    'supsrdwv': {
      'ru': 'QAZBOOKING',
      'kk': '',
      'zh_Hans': '',
    },
    'b06s3jx1': {
      'ru': 'Базы отдыха',
      'kk': '',
      'zh_Hans': '',
    },
    '0c18hpsy': {
      'ru': '  Туры',
      'kk': '',
      'zh_Hans': '',
    },
    'civ8ivto': {
      'ru': 'Всё для отдыха',
      'kk': '',
      'zh_Hans': '',
    },
    'chprdg8a': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // Shakmatkaadminpanel
  {
    'pvmspiqh': {
      'ru': 'Список БО',
      'kk': '',
      'zh_Hans': '',
    },
    '3o9f7aog': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // Turii
  {
    '8o2whf9d': {
      'ru': 'Курортная зона',
      'kk': '',
      'zh_Hans': '',
    },
    '38aj4uhq': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'y6tbushr': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'x799e2y6': {
      'ru': 'Акши',
      'kk': '',
      'zh_Hans': '',
    },
    'yc3yzk6q': {
      'ru': 'Кабанбай',
      'kk': '',
      'zh_Hans': '',
    },
    'g4fy2tr8': {
      'ru': 'Коктума',
      'kk': '',
      'zh_Hans': '',
    },
    '1g5dp91o': {
      'ru': 'Категория',
      'kk': '',
      'zh_Hans': '',
    },
    'dre5mh4w': {
      'ru': 'Описание',
      'kk': '',
      'zh_Hans': '',
    },
    'wm830uft': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'jjnu9go3': {
      'ru': 'Туры',
      'kk': '',
      'zh_Hans': '',
    },
    'f8oecy43': {
      'ru': 'Home',
      'kk': 'Басты бет',
      'zh_Hans': '家',
    },
  },
  // Agenstva
  {
    '0omk32qm': {
      'ru': 'Курортная зона',
      'kk': '',
      'zh_Hans': '',
    },
    '1o3zo6ks': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'tt5glmhk': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'pwzjms48': {
      'ru': 'Акши',
      'kk': '',
      'zh_Hans': '',
    },
    'q573nkyb': {
      'ru': 'Кабанбай',
      'kk': '',
      'zh_Hans': '',
    },
    'sv8mkfe1': {
      'ru': 'Коктума',
      'kk': '',
      'zh_Hans': '',
    },
    'rz9wyxv4': {
      'ru': 'Категория',
      'kk': '',
      'zh_Hans': '',
    },
    '9ul0nw1x': {
      'ru': 'Описание',
      'kk': '',
      'zh_Hans': '',
    },
    'irh09kot': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'hln2kvzd': {
      'ru': 'Агентства',
      'kk': '',
      'zh_Hans': '',
    },
    'xefiducz': {
      'ru': 'Home',
      'kk': 'Басты бет',
      'zh_Hans': '家',
    },
  },
  // transport
  {
    'hn74mo59': {
      'ru': 'Курортная зона',
      'kk': '',
      'zh_Hans': '',
    },
    '2hzvfex8': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    '1qieuala': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'jtuogk88': {
      'ru': 'Акши',
      'kk': '',
      'zh_Hans': '',
    },
    'zll55utm': {
      'ru': 'Кабанбай',
      'kk': '',
      'zh_Hans': '',
    },
    'jzbkhn7z': {
      'ru': 'Коктума',
      'kk': '',
      'zh_Hans': '',
    },
    '24tm0n5f': {
      'ru': 'Категория',
      'kk': '',
      'zh_Hans': '',
    },
    '39ulmavg': {
      'ru': 'Описание',
      'kk': '',
      'zh_Hans': '',
    },
    'k9yeia2k': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    '3q7kjuvs': {
      'ru': 'Транспорт',
      'kk': '',
      'zh_Hans': '',
    },
    'g71mf53j': {
      'ru': 'Home',
      'kk': 'Басты бет',
      'zh_Hans': '家',
    },
  },
  // Eda
  {
    '7lum9vvu': {
      'ru': 'Курортная зона',
      'kk': '',
      'zh_Hans': '',
    },
    'csiak0su': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'i7p086ql': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'pcozqby0': {
      'ru': 'Акши',
      'kk': '',
      'zh_Hans': '',
    },
    'ifcz0wgi': {
      'ru': 'Кабанбай',
      'kk': '',
      'zh_Hans': '',
    },
    'dx5oxig3': {
      'ru': 'Коктума',
      'kk': '',
      'zh_Hans': '',
    },
    '4mbk9jzp': {
      'ru': 'Категория',
      'kk': '',
      'zh_Hans': '',
    },
    'dkjsncg3': {
      'ru': 'Описание',
      'kk': '',
      'zh_Hans': '',
    },
    'k01oh6j5': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    '6o966zd3': {
      'ru': 'Еда и развлечения',
      'kk': '',
      'zh_Hans': '',
    },
    'bt04ykap': {
      'ru': 'Home',
      'kk': 'Басты бет',
      'zh_Hans': '家',
    },
  },
  // PolicyPage
  {
    'lewiuh50': {
      'ru': 'Политика конфиденциальности',
      'kk': '',
      'zh_Hans': '',
    },
    'vp4qlvgd': {
      'ru':
          'Настоящая Политика конфиденциальности (далее — «Политика») определяет порядок обработки и защиты персональных данных пользователей мобильного приложения «QazBooking» (далее — «Приложение»), предоставляемых Индивидуальным предпринимателем Жумангазиной Таной Тлегеновной (далее — «Оператор» или «ИП Жумангазина»), в соответствии с Законом Республики Казахстан «О персональных данных и их защите».\n\n1. Общие положения\n\n1.1. Использование Приложения означает безоговорочное согласие пользователя с настоящей Политикой и условиями обработки персональных данных. В случае несогласия с этими условиями пользователь должен воздержаться от использования Приложения.\n\n1.2. Политика распространяется на всех пользователей Приложения: клиентов, партнёров, поставщиков услуг, суперадминов.\n\n1.3. Приложение доступно для скачивания через App Store и Play Market и предназначено для поиска, бронирования, управления базами отдыха и предоставления туристических услуг.\n\n2. Состав обрабатываемых персональных данных\n\n2.1. Персональная информация, предоставляемая пользователями при регистрации и использовании Приложения:\n\t•\tФИО\n\t•\tномер телефона\n\t•\tадрес электронной почты\n\t•\tсведения о бронированиях\n\t•\tплатежные данные (в обезличенном виде)\n\t•\tиные данные, переданные добровольно\n\n2.2. Данные, собираемые автоматически:\n\t•\tтип устройства\n\t•\tIP-адрес\n\t•\tгеолокация (по согласию)\n\t•\tcookies\n\n3. Цели сбора и обработки персональных данных\n\n3.1. Персональные данные пользователей обрабатываются для:\n\t•\tрегистрации и аутентификации пользователя\n\t•\tпредоставления доступа к функционалу Приложения\n\t•\tосуществления связи с пользователями\n\t•\tрасчета стоимости услуг\n\t•\tпродвижения услуг партнеров\n\t•\tулучшения качества сервиса\n\t•\tстатистических и маркетинговых целей (на основе обезличенных данных)\n\n4. Правовые основания обработки данных\n\n4.1. Обработка персональных данных осуществляется на основании:\n\t•\tсогласия пользователя;\n\t•\tисполнения договора (оказание услуг через Приложение);\n\t•\tтребований законодательства РК.\n\n5. Условия обработки и хранения данных\n\n5.1. Персональные данные обрабатываются с использованием автоматизированных и неавтоматизированных средств.\n\n5.2. Данные хранятся на серверах, расположенных в дата-центрах с надлежащим уровнем защиты.\n\n5.3. Срок хранения данных — в течение всего периода использования Приложения пользователем и 5 лет после прекращения использования (если иное не предусмотрено законом).\n\n6. Передача персональных данных третьим лицам\n\n6.1. Передача допускается только в случаях:\n\t•\tполучения согласия пользователя;\n\t•\tнеобходимости исполнения договора (например, передачи данных администрации базы);\n\t•\tпо требованию уполномоченных государственных органов;\n\t•\tв рамках правопреемства (реорганизация ИП).\n\n6.2. Все третьи лица обязуются соблюдать конфиденциальность данных.\n\n7. Права пользователя\n\nПользователь вправе:\n\t•\tполучать информацию об обработке своих персональных данных;\n\t•\tтребовать исправления, обновления, блокировки или удаления своих данных;\n\t•\tотозвать согласие на обработку персональных данных;\n\t•\tобжаловать действия оператора в суде или уполномоченном органе.\n\n8. Защита персональных данных\n\n8.1. ИП Жумангазина принимает все необходимые технические и организационные меры для защиты данных от несанкционированного доступа, изменения, раскрытия и уничтожения.\n\n8.2. Все сотрудники и подрядчики, имеющие доступ к данным, несут персональную ответственность за их конфиденциальность.\n\n9. Изменение Политики\n\n9.1. ИП Жумангазина вправе изменять настоящую Политику в любое время. Об изменениях будет сообщено путем публикации новой редакции на официальном сайте и/или в Приложении.\n\n9.2. Новая редакция вступает в силу с момента публикации, если не указано иное.\n\n10. Контакты\n\nИндивидуальный предприниматель Жумангазина Тана Тлегеновна\nEmail: [ваш email]\nТелефон: 87002227561\nЮридический адрес: Муратбаева 14, 14\n\n\n\n\nПользовательское соглашение мобильного приложения «QazBooking»\n\nНастоящее Пользовательское соглашение (далее — «Соглашение») регулирует условия использования мобильного приложения «QazBooking» (далее — «Приложение»), принадлежащего Индивидуальному предпринимателю Жумангазиной Тане Тлегеновне (далее — «Оператор» или «ИП Жумангазина»), и заключается между Оператором и физическим лицом, устанавливающим и/или использующим Приложение (далее — «Пользователь»).\n\nИспользуя Приложение, Пользователь подтверждает, что ознакомился и согласен с условиями настоящего Соглашения.\n\n⸻\n\n1. Общие положения\n\n1.1. Приложение предоставляет Пользователям возможность:\n\t•\tбронировать номера в пансионатах/базах отдыха и иных объектах;\n\t•\tуправлять бронированиями;\n\t•\tпросматривать каталог туристических услуг (такси, еда, развлечения и др.);\n\t•\tвзаимодействовать с администрацией объектов.\n\n1.2. Настоящее Соглашение регулирует отношения между Пользователем и Оператором, а также между Пользователем и партнерами, предоставляющими услуги через Приложение.\n\n⸻\n\n2. Регистрация и учетная запись\n\n2.1. Для полноценного использования Приложения Пользователю необходимо пройти регистрацию и предоставить достоверную информацию.\n\n2.2. Пользователь несет ответственность за сохранность логина и пароля, а также за все действия, совершенные под его учетной записью.\n\n⸻\n\n3. Права и обязанности сторон\n\n3.1. Пользователь обязуется:\n\t•\tиспользовать Приложение в соответствии с законодательством РК;\n\t•\tне предоставлять заведомо ложные данные;\n\t•\tне нарушать права третьих лиц;\n\t•\tне предпринимать действий, нарушающих работу Приложения.\n\n3.2. Пользователь имеет право:\n\t•\tпользоваться функционалом Приложения;\n\t•\tобращаться в техническую поддержку;\n\t•\tредактировать и удалять свои данные;\n\t•\tотзывать согласие на обработку персональных данных.\n\n3.3. Оператор обязуется:\n\t•\tпредоставлять доступ к функционалу Приложения;\n\t•\tобеспечивать сохранность персональных данных Пользователя;\n\t•\tсвоевременно информировать об изменениях в Соглашении и Политике конфиденциальности.\n\n3.4. Оператор имеет право:\n\t•\tприостанавливать или прекращать доступ к Приложению при нарушении условий Соглашения;\n\t•\tвносить изменения в Приложение и условия Соглашения;\n\t•\tнаправлять Пользователю уведомления, связанные с работой Приложения.\n\n⸻\n\n4. Услуги сторонних поставщиков\n\n4.1. Оператор не несет ответственности за действия или бездействие сторонних поставщиков услуг, размещающих свои предложения в Приложении.\n\n4.2. Все споры по качеству услуг решаются между Пользователем и соответствующим партнером.\n\n⸻\n\n5. Ограничение ответственности\n\n5.1. Оператор не гарантирует бесперебойную работу Приложения, отсутствие ошибок и соответствие ожиданиям Пользователя.\n\n5.2. Оператор не несет ответственности за убытки, причиненные в результате:\n\t•\tтехнических сбоев;\n\t•\tдействий третьих лиц;\n\t•\tнедостоверной информации, предоставленной партнерами или Пользователями.\n\n⸻\n\n6. Интеллектуальная собственность\n\n6.1. Все элементы дизайна, логотипы, тексты, программный код и иные материалы, размещенные в Приложении, являются объектами авторских прав ИП Жумангазина или его партнеров.\n\n6.2. Запрещается копирование, распространение и иное использование материалов Приложения без письменного согласия Оператора.\n\n⸻\n\n7. Заключительные положения\n\n7.1. Настоящее Соглашение регулируется законодательством Республики Казахстан.\n\n7.2. Все споры и разногласия подлежат разрешению путем переговоров, а при недостижении согласия — в судебном порядке по месту регистрации ИП Жумангазина.\n\n7.3. Оператор вправе в одностороннем порядке изменять условия настоящего Соглашения. Новая редакция вступает в силу с момента её размещения в Приложении.\n\n⸻\n\nКонтакты:\n\nИндивидуальный предприниматель Жумангазина Тана Тлегеновна\nEmail:qazbookingapp@gmail.com\nТелефон: 87002227561\nЮридический адрес: Муратбаева 14, 14\n\n___________________\n\n\n\n\n\n\nПользовательское соглашение мобильного приложения «QazBooking»\n\nНастоящее Пользовательское соглашение (далее — «Соглашение») регулирует условия использования мобильного приложения «QazBooking» (далее — «Приложение»), принадлежащего Индивидуальному предпринимателю Жумангазиной Тане Тлегеновне (далее — «Оператор» или «ИП Жумангазина»), и заключается между Оператором и физическим лицом, устанавливающим и/или использующим Приложение (далее — «Пользователь»).\n\nИспользуя Приложение, Пользователь подтверждает, что ознакомился и согласен с условиями настоящего Соглашения.\n\n⸻\n\n1. Общие положения\n\n1.1. Приложение предоставляет Пользователям возможность:\n\t•\tбронировать номера в пансионатах/базах отдыха и иных объектах;\n\t•\tуправлять бронированиями;\n\t•\tпросматривать каталог туристических услуг (такси, еда, развлечения и др.);\n\t•\tвзаимодействовать с администрацией объектов.\n\n1.2. Настоящее Соглашение регулирует отношения между Пользователем и Оператором, а также между Пользователем и партнерами, предоставляющими услуги через Приложение.\n\n⸻\n\n2. Регистрация и учетная запись\n\n2.1. Для полноценного использования Приложения Пользователю необходимо пройти регистрацию и предоставить достоверную информацию.\n\n2.2. Пользователь несет ответственность за сохранность логина и пароля, а также за все действия, совершенные под его учетной записью.\n\n⸻\n\n3. Права и обязанности сторон\n\n3.1. Пользователь обязуется:\n\t•\tиспользовать Приложение в соответствии с законодательством РК;\n\t•\tне предоставлять заведомо ложные данные;\n\t•\tне нарушать права третьих лиц;\n\t•\tне предпринимать действий, нарушающих работу Приложения.\n\n3.2. Пользователь имеет право:\n\t•\tпользоваться функционалом Приложения;\n\t•\tобращаться в техническую поддержку;\n\t•\tредактировать и удалять свои данные;\n\t•\tотзывать согласие на обработку персональных данных.\n\n3.3. Оператор обязуется:\n\t•\tпредоставлять доступ к функционалу Приложения;\n\t•\tобеспечивать сохранность персональных данных Пользователя;\n\t•\tсвоевременно информировать об изменениях в Соглашении и Политике конфиденциальности.\n\n3.4. Оператор имеет право:\n\t•\tприостанавливать или прекращать доступ к Приложению при нарушении условий Соглашения;\n\t•\tвносить изменения в Приложение и условия Соглашения;\n\t•\tнаправлять Пользователю уведомления, связанные с работой Приложения.\n\n⸻\n\n4. Услуги сторонних поставщиков\n\n4.1. Оператор не несет ответственности за действия или бездействие сторонних поставщиков услуг, размещающих свои предложения в Приложении.\n\n4.2. Все споры по качеству услуг решаются между Пользователем и соответствующим партнером.\n\n⸻\n\n5. Ограничение ответственности\n\n5.1. Оператор не гарантирует бесперебойную работу Приложения, отсутствие ошибок и соответствие ожиданиям Пользователя.\n\n5.2. Оператор не несет ответственности за убытки, причиненные в результате:\n\t•\tтехнических сбоев;\n\t•\tдействий третьих лиц;\n\t•\tнедостоверной информации, предоставленной партнерами или Пользователями.\n\n⸻\n\n6. Интеллектуальная собственность\n\n6.1. Все элементы дизайна, логотипы, тексты, программный код и иные материалы, размещенные в Приложении, являются объектами авторских прав ИП Жумангазина или его партнеров.\n\n6.2. Запрещается копирование, распространение и иное использование материалов Приложения без письменного согласия Оператора.\n\n⸻\n\n7. Заключительные положения\n\n7.1. Настоящее Соглашение регулируется законодательством Республики Казахстан.\n\n7.2. Все споры и разногласия подлежат разрешению путем переговоров, а при недостижении согласия — в судебном порядке по месту регистрации ИП Жумангазина.\n\n7.3. Оператор вправе в одностороннем порядке изменять условия настоящего Соглашения. Новая редакция вступает в силу с момента её размещения в Приложении.\n\n⸻\n\nКонтакты:\n\nИндивидуальный предприниматель Жумангазина Тана Тлегеновна\nEmail: qazbookingapp@gmail.com\nТелефон: 87002227561\nЮридический адрес: Муратбаева 14, 14\n',
      'kk': '',
      'zh_Hans': '',
    },
    'apx0eonb': {
      'ru': 'Home',
      'kk': 'Басты бет',
      'zh_Hans': '家',
    },
  },
  // shakhmatkaAdminCopy
  {
    '6slw4dp9': {
      'ru': 'Эконом',
      'kk': '',
      'zh_Hans': '',
    },
    '8o4mz99c': {
      'ru': 'Стандарт',
      'kk': '',
      'zh_Hans': '',
    },
    '8dt9bh39': {
      'ru': 'Люкс',
      'kk': '',
      'zh_Hans': '',
    },
    '0d4ds5r4': {
      'ru': 'Добавить клиента',
      'kk': '',
      'zh_Hans': '',
    },
    '27r7r6u3': {
      'ru': 'Добавить номер',
      'kk': '',
      'zh_Hans': '',
    },
    '542sug0f': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // ShakmatkaadminpanelCopy
  {
    'ndz3b37p': {
      'ru': 'Список БО',
      'kk': '',
      'zh_Hans': '',
    },
    '3xf7i5dj': {
      'ru': 'Home',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // vsedlyaotdihapodat
  {
    'o1mz3of7': {
      'ru': ' ',
      'kk': '',
      'zh_Hans': '',
    },
    'e7j3w0aw': {
      'ru': 'Home',
      'kk': 'Басты бет',
      'zh_Hans': '家',
    },
  },
  // Turipodat
  {
    'cl3ryuug': {
      'ru': ' ',
      'kk': '',
      'zh_Hans': '',
    },
    'j305tzxb': {
      'ru': 'Home',
      'kk': 'Басты бет',
      'zh_Hans': '家',
    },
  },
  // navbartop
  {
    'zjw6yb7k': {
      'ru': 'Главная',
      'kk': '',
      'zh_Hans': '',
    },
    'opj68qlq': {
      'ru': 'Туры',
      'kk': '',
      'zh_Hans': '',
    },
    'm2efa2g1': {
      'ru': 'Всё для отдыха',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // navbarBot
  {
    'i094nbqg': {
      'ru': 'Профиль',
      'kk': '',
      'zh_Hans': '',
    },
    '9nlvm6bi': {
      'ru': 'Избранные',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // SearchBazaOtdiha
  {
    'rslm1aiz': {
      'ru': 'База отдыха',
      'kk': '',
      'zh_Hans': '',
    },
    'xwdcf4ad': {
      'ru': 'Курортная зона',
      'kk': '',
      'zh_Hans': '',
    },
    '7et6p0m4': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    '3zswabi3': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    '8618ktug': {
      'ru': 'Акши',
      'kk': '',
      'zh_Hans': '',
    },
    'p2rr71r9': {
      'ru': 'Кабанбай',
      'kk': '',
      'zh_Hans': '',
    },
    'c5yby6pe': {
      'ru': 'Коктума',
      'kk': '',
      'zh_Hans': '',
    },
    'oku0yoz0': {
      'ru': 'Стоимость на 1 чел в сутки',
      'kk': '',
      'zh_Hans': '',
    },
    '3jk4p1la': {
      'ru': 'От ',
      'kk': '',
      'zh_Hans': '',
    },
    '48amytz0': {
      'ru': 'Цена',
      'kk': '',
      'zh_Hans': '',
    },
    'zv3b61tp': {
      'ru': 'До',
      'kk': '',
      'zh_Hans': '',
    },
    '6y4jat8o': {
      'ru': 'Цена',
      'kk': '',
      'zh_Hans': '',
    },
    'j8wcgh1j': {
      'ru': 'Дата и Время',
      'kk': '',
      'zh_Hans': '',
    },
    'f0yu2exo': {
      'ru': 'Заезд:',
      'kk': '',
      'zh_Hans': '',
    },
    'yqdsj9ql': {
      'ru': 'Выезд: ',
      'kk': '',
      'zh_Hans': '',
    },
    'z58i6g9d': {
      'ru': 'Удаленность от берега',
      'kk': '',
      'zh_Hans': '',
    },
    't816daoh': {
      'ru': '300',
      'kk': '',
      'zh_Hans': '',
    },
    'kr58scsr': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'y8ia5oc6': {
      'ru': '50',
      'kk': '',
      'zh_Hans': '',
    },
    '5j0rirqu': {
      'ru': '100',
      'kk': '',
      'zh_Hans': '',
    },
    'nb27yepa': {
      'ru': '150',
      'kk': '',
      'zh_Hans': '',
    },
    't0iykiik': {
      'ru': '200',
      'kk': '',
      'zh_Hans': '',
    },
    'dnb6nkcj': {
      'ru': '250',
      'kk': '',
      'zh_Hans': '',
    },
    'q9qcblxj': {
      'ru': '300',
      'kk': '',
      'zh_Hans': '',
    },
    'bmf1znm1': {
      'ru': 'Берег для Акши',
      'kk': '',
      'zh_Hans': '',
    },
    '590yhqbn': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'w9j95p97': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'gfxx5y2p': {
      'ru': 'Левый',
      'kk': '',
      'zh_Hans': '',
    },
    'vlftdvmq': {
      'ru': 'Правый',
      'kk': '',
      'zh_Hans': '',
    },
    '0xk7bx82': {
      'ru': 'Удаленность от Арбата\nдля Кабанбай',
      'kk': '',
      'zh_Hans': '',
    },
    'h6wusx11': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    '1eghfjkz': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'l1qzfi4z': {
      'ru': '50',
      'kk': '',
      'zh_Hans': '',
    },
    'qnnp2q4l': {
      'ru': '100',
      'kk': '',
      'zh_Hans': '',
    },
    'qqs3scn9': {
      'ru': '150',
      'kk': '',
      'zh_Hans': '',
    },
    '5py3v5r6': {
      'ru': '200',
      'kk': '',
      'zh_Hans': '',
    },
    '390yyhqg': {
      'ru': '250',
      'kk': '',
      'zh_Hans': '',
    },
    'm5mcaiak': {
      'ru': '300',
      'kk': '',
      'zh_Hans': '',
    },
    'u0l2pco4': {
      'ru': 'Бассейн',
      'kk': '',
      'zh_Hans': '',
    },
    'sb6e94mr': {
      'ru': 'Детская площадка',
      'kk': '',
      'zh_Hans': '',
    },
    '7kvrh5c9': {
      'ru': 'Кафе/бары/танцпол',
      'kk': '',
      'zh_Hans': '',
    },
    '30v6oz5q': {
      'ru': 'Паркинг',
      'kk': '',
      'zh_Hans': '',
    },
    'nc8wst6m': {
      'ru': 'Трансфер со станции',
      'kk': '',
      'zh_Hans': '',
    },
    'pdlhddhu': {
      'ru': 'Очистить всё',
      'kk': '',
      'zh_Hans': '',
    },
    'p42hbjui': {
      'ru': 'Результаты',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // detailsitem
  {
    'bh69vyly': {
      'ru': 'Связаться с \nадминистратором',
      'kk': '',
      'zh_Hans': '',
    },
    'f1siknfp': {
      'ru': 'Наличие мест',
      'kk': '',
      'zh_Hans': '',
    },
    'qqnp5t8h': {
      'ru': 'Калькулятор',
      'kk': '',
      'zh_Hans': '',
    },
    'flynvxtg': {
      'ru': 'Удаленность от берега:',
      'kk': '',
      'zh_Hans': '',
    },
    'onbfayaw': {
      'ru': 'Подробную информацию \nуточняйте у администратора',
      'kk': '',
      'zh_Hans': '',
    },
    'z7epy119': {
      'ru': 'Отзывы',
      'kk': '',
      'zh_Hans': '',
    },
    '90jfqzj9': {
      'ru': 'Написать отзыв',
      'kk': '',
      'zh_Hans': '',
    },
    '67fugws3': {
      'ru': 'Написать',
      'kk': '',
      'zh_Hans': '',
    },
    'aekqlk47': {
      'ru': 'Отправить',
      'kk': '',
      'zh_Hans': '',
    },
    'dh4gsf70': {
      'ru': 'Отзывы',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // Turi
  {
    '78uq1p5a': {
      'ru': 'ТУРЫ',
      'kk': '',
      'zh_Hans': '',
    },
    '7ou2v5yv': {
      'ru': 'АГЕНТСТВА',
      'kk': '',
      'zh_Hans': '',
    },
    '9rs58h6e': {
      'ru': 'Добавить объявление',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // knopkaturiadd
  {
    'hxvebme1': {
      'ru': 'Выбрать категорию',
      'kk': '',
      'zh_Hans': '',
    },
    'g1ygwykl': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    '45zqs58h': {
      'ru': 'Туры',
      'kk': '',
      'zh_Hans': '',
    },
    'g89lgi5s': {
      'ru': 'Агентства',
      'kk': '',
      'zh_Hans': '',
    },
    '5ygftniq': {
      'ru': 'Курортная зона',
      'kk': '',
      'zh_Hans': '',
    },
    'v2q0aohz': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'mislxknz': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    '5o2yd5vn': {
      'ru': 'Акши',
      'kk': '',
      'zh_Hans': '',
    },
    'x3renpdf': {
      'ru': 'Кабанбай',
      'kk': '',
      'zh_Hans': '',
    },
    'mioptlaq': {
      'ru': 'Коктума',
      'kk': '',
      'zh_Hans': '',
    },
    'e1d5m607': {
      'ru': 'Добавить информацию',
      'kk': '',
      'zh_Hans': '',
    },
    'pmfys8bs': {
      'ru': 'Добавить информацию ...',
      'kk': '',
      'zh_Hans': '',
    },
    'llx0wi43': {
      'ru': 'Загрузить фотографию',
      'kk': '',
      'zh_Hans': '',
    },
    'k5kuthyv': {
      'ru': 'Номер  телефона',
      'kk': '',
      'zh_Hans': '',
    },
    'zlg93zju': {
      'ru': 'Отправить модератору',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // vsedlyaotdiha
  {
    '1v2yzasz': {
      'ru': 'Выбрать категорию',
      'kk': '',
      'zh_Hans': '',
    },
    '0vr4y6ho': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'hox1fxhw': {
      'ru': 'Еда/Развлечения',
      'kk': '',
      'zh_Hans': '',
    },
    'km6ovzc8': {
      'ru': 'Транспорт',
      'kk': '',
      'zh_Hans': '',
    },
    'pobm1g91': {
      'ru': 'Курортная зона',
      'kk': '',
      'zh_Hans': '',
    },
    'qw5axy97': {
      'ru': 'Выбрать',
      'kk': '',
      'zh_Hans': '',
    },
    'w7wk6v9x': {
      'ru': 'Search...',
      'kk': '',
      'zh_Hans': '',
    },
    'b98rxycn': {
      'ru': 'Акши',
      'kk': '',
      'zh_Hans': '',
    },
    '1n8dd1ip': {
      'ru': 'Кабанбай',
      'kk': '',
      'zh_Hans': '',
    },
    't7cy858b': {
      'ru': 'Коктума',
      'kk': '',
      'zh_Hans': '',
    },
    'ceucex4p': {
      'ru': 'Добавить информацию',
      'kk': '',
      'zh_Hans': '',
    },
    'l03jq3p7': {
      'ru': 'Добавить информацию ...',
      'kk': '',
      'zh_Hans': '',
    },
    'dx2kessw': {
      'ru': 'Загрузить фотографию',
      'kk': '',
      'zh_Hans': '',
    },
    'znqaw28a': {
      'ru': 'Номер  телефона',
      'kk': '',
      'zh_Hans': '',
    },
    'm5eyqne9': {
      'ru': 'Отправить модератору',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // otdih
  {
    'qfqexaxw': {
      'ru': 'Еда и развлечения',
      'kk': '',
      'zh_Hans': '',
    },
    'qw9jmjny': {
      'ru': 'Транспорт',
      'kk': '',
      'zh_Hans': '',
    },
    '2bwy3a2w': {
      'ru': 'Добавить объявление',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // itemresultsotdiha
  {
    'yh2xgr1e': {
      'ru': 'карта',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // adminpanelnabar
  {
    '8r0aib7v': {
      'ru': 'Профиль',
      'kk': '',
      'zh_Hans': '',
    },
    '4kb74ehi': {
      'ru': 'Поддержка',
      'kk': '',
      'zh_Hans': '',
    },
    'yxyatlmo': {
      'ru': 'Инструменты',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // authreg
  {
    'lnwlp4cz': {
      'ru': 'Регистрация',
      'kk': '',
      'zh_Hans': '',
    },
    'rewzo6j4': {
      'ru': 'Имя',
      'kk': '',
      'zh_Hans': '',
    },
    'd2z1t4ds': {
      'ru': 'Телефон',
      'kk': '',
      'zh_Hans': '',
    },
    'viq5uv8d': {
      'ru': 'Электронная почта',
      'kk': '',
      'zh_Hans': '',
    },
    '5tr3r33n': {
      'ru': 'Пароль',
      'kk': '',
      'zh_Hans': '',
    },
    'saobrowq': {
      'ru': 'Повторить пароль',
      'kk': '',
      'zh_Hans': '',
    },
    '91s8lfqb': {
      'ru':
          'Я согласен (-а) с пользовательским \nсоглашением, политикой \nконфиденциальности и \nпубличной офертой',
      'kk': '',
      'zh_Hans': '',
    },
    'wejjbjp4': {
      'ru': 'Зарегестрироваться',
      'kk': '',
      'zh_Hans': '',
    },
    's9rld5e9': {
      'ru': 'Проводя оплату, вы соглашаетесь с нашими ',
      'kk': '',
      'zh_Hans': '',
    },
    'atv90atg': {
      'ru': 'условия обслуживания ',
      'kk': '',
      'zh_Hans': '',
    },
    'x8sgkeud': {
      'ru': 'и ',
      'kk': '',
      'zh_Hans': '',
    },
    '8zpqxtj9': {
      'ru': 'политикой конфиденциальности',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // authadmin
  {
    'wk33pgd7': {
      'ru': 'Войти',
      'kk': '',
      'zh_Hans': '',
    },
    '26yibkkn': {
      'ru': 'Логин',
      'kk': '',
      'zh_Hans': '',
    },
    'mjhug2un': {
      'ru': 'Пароль',
      'kk': '',
      'zh_Hans': '',
    },
    'j163k8tc': {
      'ru':
          'Я согласен (-а) с пользовательским \nсоглашением, политикой \nконфиденциальности и \nпубличной офертой',
      'kk': '',
      'zh_Hans': '',
    },
    '0zzhujzw': {
      'ru': 'Войти',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // succes
  {
    'yukbqsrr': {
      'ru': 'Ваша заявка  отправлена',
      'kk': '',
      'zh_Hans': '',
    },
    'sad5i94e': {
      'ru': 'Ожидайте ответа 😊',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // oshibka
  {
    'mecq28pl': {
      'ru': 'Произошла ошика',
      'kk': '',
      'zh_Hans': '',
    },
    'ymrkjfku': {
      'ru': 'Повторите попытку позднее',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // Car
  {
    'ayxb5isq': {
      'ru': 'Oil Change',
      'kk': '',
      'zh_Hans': '',
    },
    'n906dh3q': {
      'ru': 'Tesla Model Y',
      'kk': '',
      'zh_Hans': '',
    },
    'mg6d53hn': {
      'ru': '#495242',
      'kk': '',
      'zh_Hans': '',
    },
    'k5nbqpwf': {
      'ru': 'In Preparation',
      'kk': '',
      'zh_Hans': '',
    },
    '5w1lzoik': {
      'ru': '4:30pm',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // transfercalendar
  {
    '53ab8tm4': {
      'ru': 'Прибытие:',
      'kk': '',
      'zh_Hans': '',
    },
    'vtrm4nsd': {
      'ru': 'Убытие:',
      'kk': '',
      'zh_Hans': '',
    },
    'knkskzrt': {
      'ru': 'Сохранить',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // calculatorAge
  {
    '2xyxvohx': {
      'ru': 'Возврастная категория',
      'kk': '',
      'zh_Hans': '',
    },
    'wwhff05c': {
      'ru': 'Взрослый от ',
      'kk': '',
      'zh_Hans': '',
    },
    '0mlr9jb2': {
      'ru': 'Возраст:',
      'kk': '',
      'zh_Hans': '',
    },
    '7dqgjax0': {
      'ru': 'до',
      'kk': '',
      'zh_Hans': '',
    },
    '5e1w6ooy': {
      'ru': 'Возраст:',
      'kk': '',
      'zh_Hans': '',
    },
    'nvc4lzpm': {
      'ru': 'Дети\nот',
      'kk': '',
      'zh_Hans': '',
    },
    '64nfa2bt': {
      'ru': 'Возраст:',
      'kk': '',
      'zh_Hans': '',
    },
    '06b89zqu': {
      'ru': 'до',
      'kk': '',
      'zh_Hans': '',
    },
    '2ohpzxc5': {
      'ru': 'Возраст:',
      'kk': '',
      'zh_Hans': '',
    },
    'howvlcki': {
      'ru': 'Дети\nот',
      'kk': '',
      'zh_Hans': '',
    },
    'bixyjbap': {
      'ru': 'Возраст:',
      'kk': '',
      'zh_Hans': '',
    },
    '64sofifw': {
      'ru': 'до',
      'kk': '',
      'zh_Hans': '',
    },
    'zbyxk4vs': {
      'ru': 'Возраст:',
      'kk': '',
      'zh_Hans': '',
    },
    '3q8ckagr': {
      'ru': 'Дети\nот',
      'kk': '',
      'zh_Hans': '',
    },
    'dkenfso0': {
      'ru': 'Возраст:',
      'kk': '',
      'zh_Hans': '',
    },
    'b7ume09o': {
      'ru': 'до',
      'kk': '',
      'zh_Hans': '',
    },
    'gt484q10': {
      'ru': 'Возраст:',
      'kk': '',
      'zh_Hans': '',
    },
    'mkzqje3m': {
      'ru': 'Сохранить',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // shakmatkaBox
  {
    'zs7t35eg': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'sh8i9xnl': {
      'ru': 'Имя клиента:',
      'kk': '',
      'zh_Hans': '',
    },
    'vzjrbp54': {
      'ru': 'Номер:  ',
      'kk': '',
      'zh_Hans': '',
    },
    'uhc8a85a': {
      'ru': 'Время заезда:  ',
      'kk': '',
      'zh_Hans': '',
    },
    'uw8hcfzl': {
      'ru': 'Время выезда:  ',
      'kk': '',
      'zh_Hans': '',
    },
    '4cubcv19': {
      'ru': 'Количество взрослых: ',
      'kk': '',
      'zh_Hans': '',
    },
    'wqhs36xa': {
      'ru': 'Количество детей 1 категория: ',
      'kk': '',
      'zh_Hans': '',
    },
    'av87gv56': {
      'ru': 'Количество детей 2 категория: ',
      'kk': '',
      'zh_Hans': '',
    },
    'kjqx94j6': {
      'ru': 'Количество детей 3 категория: ',
      'kk': '',
      'zh_Hans': '',
    },
    'lfal8nnu': {
      'ru': 'Общая сумма: ',
      'kk': '',
      'zh_Hans': '',
    },
    'h7k2iyor': {
      'ru': 'Остаток: ',
      'kk': '',
      'zh_Hans': '',
    },
    't16in2t4': {
      'ru': 'Назад',
      'kk': '',
      'zh_Hans': '',
    },
    'n4prubrt': {
      'ru': 'WhatsApp',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // authregadmin
  {
    'mtdfrswi': {
      'ru': 'Регистрация как админ',
      'kk': '',
      'zh_Hans': '',
    },
    'luuokkw5': {
      'ru': 'Имя',
      'kk': '',
      'zh_Hans': '',
    },
    'l3vck0k5': {
      'ru': 'Телефон',
      'kk': '',
      'zh_Hans': '',
    },
    'x7p350pu': {
      'ru': 'Электронная почта',
      'kk': '',
      'zh_Hans': '',
    },
    'i1c6oy88': {
      'ru': 'Пароль',
      'kk': '',
      'zh_Hans': '',
    },
    '45phpkzz': {
      'ru': 'Повторить пароль',
      'kk': '',
      'zh_Hans': '',
    },
    'ukzoeqpb': {
      'ru': 'Я согласен(-а) с оффертой и\nПолитикой конфеденциальности',
      'kk': '',
      'zh_Hans': '',
    },
    'u80rdlrt': {
      'ru': 'Регистрация',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // notificationAuth
  {
    'tssqy0n2': {
      'ru': 'Войти ',
      'kk': '',
      'zh_Hans': '',
    },
    '9zyyh2xc': {
      'ru': 'Регистрация',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // navbarBotClient
  {
    '01z211kq': {
      'ru': 'Профиль',
      'kk': '',
      'zh_Hans': '',
    },
    'thawcerf': {
      'ru': 'Избранные',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // detailsitemClient
  {
    '9fnxxjml': {
      'ru': 'Посмотреть на карте',
      'kk': '',
      'zh_Hans': '',
    },
    'okcgjku8': {
      'ru': 'Связаться с \nадминистратором',
      'kk': '',
      'zh_Hans': '',
    },
    'fos7b6sa': {
      'ru': 'Наличие мест',
      'kk': '',
      'zh_Hans': '',
    },
    'wdrbpzjh': {
      'ru': 'Калькулятор',
      'kk': '',
      'zh_Hans': '',
    },
    'yzhxnkmw': {
      'ru': 'Подробную информацию \nуточняйте у администратора',
      'kk': '',
      'zh_Hans': '',
    },
    'gwzji2n2': {
      'ru': 'Отзывы',
      'kk': '',
      'zh_Hans': '',
    },
    '1vcimfmu': {
      'ru': 'Написать отзыв',
      'kk': '',
      'zh_Hans': '',
    },
    'sqikxkzd': {
      'ru': 'Написать',
      'kk': '',
      'zh_Hans': '',
    },
    '31wb2tei': {
      'ru': 'Отправить',
      'kk': '',
      'zh_Hans': '',
    },
    '2k8lq4dz': {
      'ru': 'Отзывы',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // authclient
  {
    'ihrlgq9h': {
      'ru': 'Войти',
      'kk': '',
      'zh_Hans': '',
    },
    '4xezftpq': {
      'ru': 'Логин',
      'kk': '',
      'zh_Hans': '',
    },
    'lre4p8lb': {
      'ru': 'Пароль',
      'kk': '',
      'zh_Hans': '',
    },
    'klh4eg92': {
      'ru':
          'Я согласен (-а) с пользовательским \nсоглашением, политикой \nконфиденциальности и \nпубличной офертой',
      'kk': '',
      'zh_Hans': '',
    },
    '7nusm1ud': {
      'ru': 'Войти',
      'kk': '',
      'zh_Hans': '',
    },
    'm3oocdfi': {
      'ru': 'Нет аккаунта?',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // navbartopClient
  {
    'dmol9hjw': {
      'ru': 'Главная',
      'kk': '',
      'zh_Hans': '',
    },
    'ud20a1vl': {
      'ru': 'Туры',
      'kk': '',
      'zh_Hans': '',
    },
    '7z2b9poh': {
      'ru': 'Всё для отдыха',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // itemresultsotdihaCopy
  {
    '6k6om6bm': {
      'ru': 'карта',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // zayavkidetail
  {
    'bpotic55': {
      'ru': 'Отклонить',
      'kk': '',
      'zh_Hans': '',
    },
    'bgxo9yqm': {
      'ru': 'Принять',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // zayavkip
  {
    'qghzeipk': {
      'ru': 'Отклонить',
      'kk': '',
      'zh_Hans': '',
    },
    '9ci0sffg': {
      'ru': 'Принять',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // shakmatkaBoxCopy
  {
    '3on0r4i3': {
      'ru': 'Имя клиента:',
      'kk': '',
      'zh_Hans': '',
    },
    'xu6ewsnm': {
      'ru': 'Номер:  ',
      'kk': '',
      'zh_Hans': '',
    },
    'ed9fd7ft': {
      'ru': 'Время заезда:  ',
      'kk': '',
      'zh_Hans': '',
    },
    'bydb1hgm': {
      'ru': 'Время выезда:  ',
      'kk': '',
      'zh_Hans': '',
    },
    'p0hzph7o': {
      'ru': 'Количество взрослых: ',
      'kk': '',
      'zh_Hans': '',
    },
    'kdx5uenp': {
      'ru': 'Количество детей 1 категория: ',
      'kk': '',
      'zh_Hans': '',
    },
    'c5dc2t7t': {
      'ru': 'Количество детей 2 категория: ',
      'kk': '',
      'zh_Hans': '',
    },
    '6yapgon7': {
      'ru': 'Количество детей 3 категория: ',
      'kk': '',
      'zh_Hans': '',
    },
    '1d2w75x9': {
      'ru': 'Общая сумма: ',
      'kk': '',
      'zh_Hans': '',
    },
    'yk5xia8m': {
      'ru': 'Остаток: ',
      'kk': '',
      'zh_Hans': '',
    },
    'swt4uwoh': {
      'ru': 'Изменить',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // shakmatkaBoxEdit
  {
    'xee03x63': {
      'ru': 'Имя клиента:',
      'kk': '',
      'zh_Hans': '',
    },
    'ipd31b8b': {
      'ru': 'TextField',
      'kk': '',
      'zh_Hans': '',
    },
    'aa3mb7nv': {
      'ru': 'Номер:  ',
      'kk': '',
      'zh_Hans': '',
    },
    '444xpkb4': {
      'ru': 'TextField',
      'kk': '',
      'zh_Hans': '',
    },
    '8hd4lfom': {
      'ru': 'Время заезда:  ',
      'kk': '',
      'zh_Hans': '',
    },
    'lktq9zz8': {
      'ru': 'Время выезда:  ',
      'kk': '',
      'zh_Hans': '',
    },
    'scdoto5s': {
      'ru': 'Количество взрослых: ',
      'kk': '',
      'zh_Hans': '',
    },
    'sb6ewgvd': {
      'ru': 'TextField',
      'kk': '',
      'zh_Hans': '',
    },
    '7i8hq6fp': {
      'ru': 'Количество детей 1 категория: ',
      'kk': '',
      'zh_Hans': '',
    },
    '4gxlnip5': {
      'ru': 'TextField',
      'kk': '',
      'zh_Hans': '',
    },
    '17vtj1mt': {
      'ru': 'Количество детей 2 категория: ',
      'kk': '',
      'zh_Hans': '',
    },
    'l4tvg18l': {
      'ru': 'TextField',
      'kk': '',
      'zh_Hans': '',
    },
    'm6wdhyx5': {
      'ru': 'Количество детей 3 категория: ',
      'kk': '',
      'zh_Hans': '',
    },
    'aqcgj1bk': {
      'ru': 'TextField',
      'kk': '',
      'zh_Hans': '',
    },
    '9i43zbfb': {
      'ru': 'Общая сумма: ',
      'kk': '',
      'zh_Hans': '',
    },
    '3vubtllt': {
      'ru': 'Остаток: ',
      'kk': '',
      'zh_Hans': '',
    },
    'khvrkys8': {
      'ru': 'TextField',
      'kk': '',
      'zh_Hans': '',
    },
    'u173rk07': {
      'ru': 'Изменить',
      'kk': '',
      'zh_Hans': '',
    },
    '5iekqile': {
      'ru': 'Удалить',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // shakmatkaBoxRoomEdit
  {
    '1kufyc8a': {
      'ru': 'Номер:',
      'kk': '',
      'zh_Hans': '',
    },
    '9neys9r0': {
      'ru': 'Количество кровать:  ',
      'kk': '',
      'zh_Hans': '',
    },
    '429n7d7d': {
      'ru': 'TextField',
      'kk': '',
      'zh_Hans': '',
    },
    'jwe4e3g1': {
      'ru': 'Туалет: ',
      'kk': '',
      'zh_Hans': '',
    },
    'is3xs73t': {
      'ru': 'Холодильник: ',
      'kk': '',
      'zh_Hans': '',
    },
    'xbowclt1': {
      'ru': 'Кондиционер: ',
      'kk': '',
      'zh_Hans': '',
    },
    '8bxjmlt3': {
      'ru': 'Изменить',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // help
  {
    'ekelolzp': {
      'ru': 'Поддержка',
      'kk': '',
      'zh_Hans': '',
    },
    '9tmez62a': {
      'ru': '+7 700 222 7561',
      'kk': '',
      'zh_Hans': '',
    },
    'rq2mpx0e': {
      'ru': 'instagram',
      'kk': '',
      'zh_Hans': '',
    },
    'yx2bf405': {
      'ru': 'qazbooking',
      'kk': '',
      'zh_Hans': '',
    },
  },
  // Miscellaneous
  {
    '2idezx13': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'fphv92b8': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'fzqyoxpw': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'lghrxx5a': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'meov3h2b': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    '7q50c4ve': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'lohxg0vq': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'kp7ulo5t': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'x3mwkjki': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'u5r9h3fl': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    '14o9wdeh': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'iedhd8ls': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'pm3q9bed': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'rd6645dn': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'twbgyrg0': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'ylwk7iuy': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'k4d5f8bm': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'k27qhx3c': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'twfp6hi5': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'ao46zxem': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'j85drzur': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'v4ao33gu': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'tcux5on0': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'bv2c8okn': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'b9w84tsm': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    'ta38zf66': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
    '66frg36q': {
      'ru': '',
      'kk': '',
      'zh_Hans': '',
    },
  },
].reduce((a, b) => a..addAll(b));
