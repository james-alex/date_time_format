/// European date formatting notation constants.
class EuropeanDateFormats {
  EuropeanDateFormats._();

  /// 5 November 2019
  static const String standard = r'j F Y';

  /// 5 Nov 2019
  static const String abbr = r'j M Y';

  /// 5 Nov 19
  static const String abbrAbbr = r'j M y';

  /// Tuesday 5 November 2019
  static const String dayOfWeek = r'l j F Y';

  /// Tuesday 5 Nov 2019
  static const String dayOfWeekAbbr = r'l j M Y';

  /// Tuesday 5 November 19
  static const String dayOfWeekAbbrYear = r'l j F y';

  /// Tuesday 5 Nov 19
  static const String dayOfWeekAbbrAbbrYear = r'l j M y';

  /// Tue 5 November 2019
  static const String abbrDayOfWeek = r'D j F Y';

  /// Tue 5 Nov 2019
  static const String abbrDayOfWeekAbbr = r'D j M Y';

  /// Tue 5 November 19
  static const String abbrDayOfWeekAbbrYear = r'D j F y';

  /// Tue 5 Nov 19
  static const String abbrDayOfWeekAbbrAbbrYear = r'D j M y';

  /// 05/Nov/2019
  static const String abbrShort = r'd/M/Y';

  /// 5/Nov/2019
  static const String abbrShorter = r'j/M/Y';

  /// 05/Nov/19
  static const String abbrShortAbbr = r'd/M/y';

  /// 5/Nov/19
  static const String abbrShorterAbbr = r'j/M/y';

  /// 05/11/2019
  static const String short = r'd/m/Y';

  /// 5/11/2019
  static const String shorter = r'j/n/Y';

  /// 05/11/19
  static const String shortAbbr = r'd/m/y';

  /// 5/11/19
  static const String shorterAbbr = r'j/n/y';

  /// 05-11-2019
  static const String shortHyphenated = r'd-m-Y';

  /// 5-11-2019
  static const String shorterHyphenated = r'j-n-Y';

  /// 05-11-19
  static const String shortHyphenatedAbbr = r'd-m-y';

  /// 5-11-19
  static const String shorterHyphenatedAbbr = r'j-n-y';

  /// A list of every date formatting notation constant
  /// found in the [EuropeanDateFormats] class.
  static const List<String> all = <String>[
    standard,
    abbr,
    abbrAbbr,
    dayOfWeek,
    dayOfWeekAbbr,
    dayOfWeekAbbrYear,
    dayOfWeekAbbrAbbrYear,
    abbrDayOfWeek,
    abbrDayOfWeekAbbr,
    abbrDayOfWeekAbbrYear,
    abbrDayOfWeekAbbrAbbrYear,
    abbrShort,
    abbrShorter,
    abbrShortAbbr,
    abbrShorterAbbr,
    short,
    shorter,
    shortAbbr,
    shorterAbbr,
    shortHyphenated,
    shorterHyphenated,
    shortHyphenatedAbbr,
    shorterHyphenatedAbbr,
  ];
}
