/// American date formatting notation constants.
class AmericanDateFormats {
  AmericanDateFormats._();

  /// November 5 2019
  static const String standard = r'F j Y';

  /// November 5, 2019
  static const String standardWithComma = r'F j, Y';

  /// November 5 19
  static const String standardAbbr = r'F j y';

  /// November 5, 19
  static const String standardAbbrWithComma = r'F j, y';

  /// Nov 5 2019
  static const String abbr = r'M j Y';

  /// Nov 5, 2019
  static const String abbrWithComma = r'M j, Y';

  /// Nov 5 19
  static const String abbrAbbr = r'M j y';

  /// Nov 5, 19
  static const String abbrAbbrWithComma = r'M j, y';

  /// Tuesday November 5 2019
  static const String dayOfWeek = r'l F j Y';

  /// Tuesday, November 5, 2019
  static const String dayOfWeekWithComma = r'l, F j, Y';

  /// Tuesday November 5
  static const String dayOfWeekShort = r'l F j';

  /// Tuesday, November 5
  static const String dayOfWeekShortWithComma = r'l, F j';

  /// Tue November 5 2019
  static const String abbrDayOfWeek = r'D F j Y';

  /// Tue, November 5, 2019
  static const String abbrDayOfWeekWithComma = r'D, F j, Y';

  /// Tue November 5
  static const String abbrDayOfWeekShort = r'D F j';

  /// Tue, November 5
  static const String abbrDayOfWeekShortWithComma = r'D, F j';

  /// Tue Nov 5 2019
  static const String abbrDayOfWeekAbbr = r'D M j Y';

  /// Tue, Nov 5, 2019
  static const String abbrDayOfWeekAbbrWithComma = r'D, M j, Y';

  /// Tue Nov 5 19
  static const String abbrDayOfWeekAbbrAbbr = r'D M j y';

  /// Tue, Nov 5, 19
  static const String abbrDayOfWeekAbbrAbbrWithComma = r'D, M j, y';

  /// Tue Nov 5
  static const String abbrDayOfWeekAbbrShort = r'D M j';

  /// Tue, Nov 5
  static const String abbrDayOfWeekAbbrShortWithComma = r'D, M j';

  /// Nov/05/2019
  static const String abbrShort = r'M/d/Y';

  /// Nov/5/2019
  static const String abbrShorter = r'M/j/Y';

  /// Nov/05/19
  static const String abbrShortAbbr = r'M/d/y';

  /// Nov/5/19
  static const String abbrShorterAbbr = r'M/j/y';

  /// Nov-05-2019
  static const String abbrShortHyphenated = r'M-d-Y';

  /// Nov-5-2019
  static const String abbrShorterHyphenated = r'M-j-Y';

  /// Nov-05-19
  static const String abbrShortHyphenatedAbbr = r'M-d-y';

  /// Nov-5-19
  static const String abbrShorterHyphenatedAbbr = r'M-j-y';

  /// 11/05/2019
  static const String short = r'm/d/Y';

  /// 11/5/2019
  static const String shorter = r'n/j/Y';

  /// 11/05/19
  static const String shortAbbr = r'm/d/y';

  /// 11/5/19
  static const String shorterAbbr = r'n/j/y';

  /// 11-05-2019
  static const String shortHyphenated = r'm-d-Y';

  /// 11-5-2019
  static const String shorterHyphenated = r'n-j-Y';

  /// 11-05-19
  static const String shortHyphenatedAbbr = r'm-d-y';

  /// 11-5-19
  static const String shorterHyphenatedAbbr = r'n-j-y';

  /// A list of every date formatting notation constant
  /// found in the [AmericanDateFormats] class.
  static const List<String> all = <String>[
    standard,
    standardWithComma,
    standardAbbr,
    standardAbbrWithComma,
    abbr,
    abbrWithComma,
    abbrAbbr,
    abbrAbbrWithComma,
    dayOfWeek,
    dayOfWeekWithComma,
    dayOfWeekShort,
    dayOfWeekShortWithComma,
    abbrDayOfWeek,
    abbrDayOfWeekWithComma,
    abbrDayOfWeekShort,
    abbrDayOfWeekShortWithComma,
    abbrDayOfWeekAbbr,
    abbrDayOfWeekAbbrWithComma,
    abbrDayOfWeekAbbrAbbr,
    abbrDayOfWeekAbbrAbbrWithComma,
    abbrDayOfWeekAbbrShort,
    abbrDayOfWeekAbbrShortWithComma,
    abbrShort,
    abbrShorter,
    abbrShortAbbr,
    abbrShorterAbbr,
    abbrShortHyphenated,
    abbrShorterHyphenated,
    abbrShortHyphenatedAbbr,
    abbrShorterHyphenatedAbbr,
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
