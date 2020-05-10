/// American date/time formatting notation constants.
class AmericanDateTimeFormats {
  AmericanDateTimeFormats._();

  /// November 5 2019 7:42 pm
  static const String standard = r'F j Y g:i a';

  /// November 5, 2019 7:42 pm
  static const String standardWithComma = r'F j, Y g:i a';

  /// November 5 2019 19:42
  static const String standard24Hour = r'F j Y H:i';

  /// November 5, 2019 19:42
  static const String standard24HourWithComma = r'F j, Y H:i';

  /// November 5 2019 7:42 pm PST
  static const String extended = r'F j Y g:i a T';

  /// November 5, 2019 7:42 pm PST
  static const String extendedWithComma = r'F j, Y g:i a T';

  /// November 5 2019 19:42 PST
  static const String extended24Hour = r'F j Y H:i T';

  /// November 5, 2019 19:42 PST
  static const String extended24HourWithComma = r'F j, Y H:i T';

  /// Nov 5 2019 7:42 pm
  static const String abbr = r'M j Y g:i a';

  /// Nov 5, 2019 7:42 pm
  static const String abbrWithComma = r'M j, Y g:i a';

  /// Nov 5 2019 19:42
  static const String abbr24Hour = r'M j Y H:i';

  /// Nov 5, 2019 19:42
  static const String abbr24HourWithComma = r'M j, Y H:i';

  /// Nov 5 2019 7:42 pm PST
  static const String abbrExtended = r'M j Y g:i a T';

  /// Nov 5, 2019 7:42 pm PST
  static const String abbrExtendedWithComma = r'M j, Y g:i a T';

  /// Nov 5 2019 19:42 PST
  static const String abbr24HourExtended = r'M j Y H:i T';

  /// Nov 5, 2019 19:42 PST
  static const String abbr24HourExtendedWithComma = r'M j, Y H:i T';

  /// Tuesday November 5 2019 7:42 pm
  static const String dayOfWeek = r'l F j Y g:i a';

  /// Tuesday, November 5, 2019 7:42 pm
  static const String dayOfWeekWithComma = r'l, F j, Y g:i a';

  /// Tuesday November 5 2019 7:42 pm PST
  static const String dayOfWeekExtended = r'l F j Y g:i a T';

  /// Tuesday, November 5, 2019 7:42 pm PST
  static const String dayOfWeekExtendedWithComma = r'l, F j, Y g:i a T';

  /// Tuesday November 5 2019 19:42
  static const String dayOfWeek24Hour = r'l F j Y H:i';

  /// Tuesday, November 5, 2019 19:42
  static const String dayOfWeek24HourWithComma = r'l, F j, Y H:i';

  /// Tuesday November 5 2019 19:42 PST
  static const String dayOfWeek24HourExtended = r'l F j Y H:i T';

  /// Tuesday, November 5, 2019 19:42 PST
  static const String dayOfWeek24HourExtendedWithComma = r'l, F j, Y H:i T';

  /// Tuesday Nov 5 2019 7:42 pm
  static const String dayOfWeekAbbr = r'l M j Y g:i a';

  /// Tuesday, Nov 5, 2019 7:42 pm
  static const String dayOfWeekAbbrWithComma = r'l, M j, Y g:i a';

  /// Tuesday Nov 5 2019 7:42 pm PST
  static const String dayOfWeekAbbrExtended = r'l M j Y g:i a T';

  /// Tuesday, Nov 5, 2019 7:42 pm PST
  static const String dayOfWeekAbbrExtendedWithComma = r'l, M j, Y g:i a T';

  /// Tuesday Nov 5 2019 19:42
  static const String dayOfWeekAbbr24Hour = r'l M j Y H:i';

  /// Tuesday, Nov 5, 2019 19:42
  static const String dayOfWeekAbbr24HourWithComma = r'l, M j, Y H:i';

  /// Tuesday Nov 5 2019 19:42 PST
  static const String dayOfWeekAbbr24HourExtended = r'l M j Y H:i T';

  /// Tuesday, Nov 5, 2019 19:42 PST
  static const String dayOfWeekAbbr24HourExtendedWithComma = r'l, M j, Y H:i T';

  /// Tuesday Nov 5 19 7:42 pm
  static const String dayOfWeekAbbrAbbr = r'l M j y g:i a';

  /// Tuesday, Nov 5, 19 7:42 pm
  static const String dayOfWeekAbbrAbbrWithComma = r'l, M j, y g:i a';

  /// Tuesday Nov 5 19 7:42 pm PST
  static const String dayOfWeekAbbrAbbrExtended = r'l M j y g:i a T';

  /// Tuesday, Nov 5, 19 7:42 pm PST
  static const String dayOfWeekAbbrAbbrExtendedWithComma = r'l, M j, y g:i a T';

  /// Tuesday Nov 5 19 19:42
  static const String dayOfWeekAbbrAbbr24Hour = r'l M j y H:i';

  /// Tuesday, Nov 5, 19 19:42
  static const String dayOfWeekAbbrAbbr24HourWithComma = r'l, M j, y H:i';

  /// Tuesday Nov 5 19 19:42 PST
  static const String dayOfWeekAbbrAbbr24HourExtended = r'l M j y H:i T';

  /// Tuesday, Nov 5, 19 19:42 PST
  static const String dayOfWeekAbbrAbbr24HourExtendedWithComma =
      r'l, M j, y H:i T';

  /// Tuesday Nov 5 7:42 pm
  static const String dayOfWeekAbbrShort = r'l M j g:i a';

  /// Tuesday, Nov 5 7:42 pm
  static const String dayOfWeekAbbrShortWithComma = r'l, M j g:i a';

  /// Tuesday Nov 5 7:42 pm PST
  static const String dayOfWeekAbbrShortExtended = r'l M j g:i a T';

  /// Tuesday, Nov 5 7:42 pm PST
  static const String dayOfWeekAbbrShortExtendedWithComma = r'l, M j g:i a T';

  /// Tuesday Nov 5 19:42
  static const String dayOfWeekAbbrShort24Hour = r'l M j H:i';

  /// Tuesday, Nov 5 19:42
  static const String dayOfWeekAbbrShort24HourWithComma = r'l, M j H:i';

  /// Tuesday Nov 5 19:42 PST
  static const String dayOfWeekAbbrShort24HourExtended = r'l M j H:i T';

  /// Tuesday, Nov 5 19:42 PST
  static const String dayOfWeekAbbrShort24HourExtendedWithComma =
      r'l, M j H:i T';

  /// Tue November 5 2019 7:42 pm
  static const String abbrDayOfWeek = r'D F j Y g:i a';

  /// Tue, November 5, 2019 7:42 pm
  static const String abbrDayOfWeekWithComma = r'D, F j, Y g:i a';

  /// Tue November 5 2019 7:42 pm PST
  static const String abbrDayOfWeekExtended = r'D F j Y g:i a T';

  /// Tue, November 5, 2019 7:42 pm PST
  static const String abbrDayOfWeekExtendedWithComma = r'D, F j, Y g:i a T';

  /// Tue November 5 2019 19:42
  static const String abbrDayOfWeek24Hour = r'D F j Y H:i';

  /// Tue, November 5, 2019 19:42
  static const String abbrDayOfWeek24HourWithComma = r'D, F j, Y H:i';

  /// Tue November 5 2019 19:42 PST
  static const String abbrDayOfWeek24HourExtended = r'D F j Y H:i T';

  /// Tue, November 5, 2019 19:42 PST
  static const String abbrDayOfWeek24HourExtendedWithComma = r'D, F j, Y H:i T';

  /// Tue Nov 5 2019 7:42 pm
  static const String abbrDayOfWeekAbbr = r'D M j Y g:i a';

  /// Tue, Nov 5, 2019 7:42 pm
  static const String abbrDayOfWeekAbbrWithComma = r'D, M j, Y g:i a';

  /// Tue Nov 5 2019 7:42 pm PST
  static const String abbrDayOfWeekAbbrExtended = r'D M j Y g:i a T';

  /// Tue, Nov 5, 2019 7:42 pm PST
  static const String abbrDayOfWeekAbbrExtendedWithComma = r'D, M j, Y g:i a T';

  /// Tue Nov 5 2019 19:42
  static const String abbrDayOfWeekAbbr24Hour = r'D M j Y H:i';

  /// Tue, Nov 5, 2019 19:42
  static const String abbrDayOfWeekAbbr24HourWithComma = r'D, M j, Y H:i';

  /// Tue Nov 5 2019 19:42 PST
  static const String abbrDayOfWeekAbbr24HourExtended = r'D M j Y H:i T';

  /// Tue, Nov 5, 2019 19:42 PST
  static const String abbrDayOfWeekAbbr24HourExtendedWithComma =
      r'D, M j, Y H:i T';

  /// Tue Nov 5 19 7:42 pm
  static const String abbrDayOfWeekAbbrAbbr = r'D M j y g:i a';

  /// Tue, Nov 5, 19 7:42 pm
  static const String abbrDayOfWeekAbbrAbbrWithComma = r'D, M j, y g:i a';

  /// Tue Nov 5 19 7:42 pm PST
  static const String abbrDayOfWeekAbbrAbbrExtended = r'D M j y g:i a T';

  /// Tue, Nov 5, 19 7:42 pm PST
  static const String abbrDayOfWeekAbbrAbbrExtendedWithComma =
      r'D, M j, y g:i a T';

  /// Tue Nov 5 19 19:42
  static const String abbrDayOfWeekAbbrAbbr24Hour = r'D M j y H:i';

  /// Tue, Nov 5, 19 19:42
  static const String abbrDayOfWeekAbbrAbbr24HourWithComma = r'D, M j, y H:i';

  /// Tue Nov 5 19 19:42 PST
  static const String abbrDayOfWeekAbbrAbbr24HourExtended = r'D M j y H:i T';

  /// Tue, Nov 5, 19 19:42 PST
  static const String abbrDayOfWeekAbbrAbbr24HourExtendedWithComma =
      r'D, M j, y H:i T';

  /// Tue Nov 5 7:42 pm
  static const String abbrDayOfWeekAbbrShort = r'D M j g:i a';

  /// Tue, Nov 5 7:42 pm
  static const String abbrDayOfWeekAbbrShortWithComma = r'D, M j g:i a';

  /// Tue Nov 5 7:42 pm PST
  static const String abbrDayOfWeekAbbrShortExtended = r'D M j g:i a T';

  /// Tue, Nov 5 7:42 pm PST
  static const String abbrDayOfWeekAbbrShortExtendedWithComma =
      r'D, M j g:i a T';

  /// Tue Nov 5 19:42
  static const String abbrDayOfWeekAbbrShort24Hour = r'D M j H:i';

  /// Tue, Nov 5 19:42
  static const String abbrDayOfWeekAbbrShort24HourWithComma = r'D, M j H:i';

  /// Tue Nov 5 19:42 PST
  static const String abbrDayOfWeekAbbrShort24HourExtended = r'D M j H:i T';

  /// Tue, Nov 5 19:42 PST
  static const String abbrDayOfWeekAbbrShort24HourExtendedWithComma =
      r'D, M j H:i T';

  /// Nov/05/2019 7:42 pm
  static const String abbrShort = 'M/d/Y g:i a';

  /// Nov/5/2019 7:42 pm
  static const String abbrShorter = 'M/j/Y g:i a';

  /// Nov/05/2019 7:42 pm PST
  static const String abbrShortExtended = 'M/d/Y g:i a T';

  /// Nov/5/2019 7:42 pm PST
  static const String abbrShorterExtended = 'M/j/Y g:i a T';

  /// Nov/05/2019 19:42
  static const String abbrShort24Hour = 'M/d/Y H:i';

  /// Nov/5/2019 19:42
  static const String abbrShorter24Hour = 'M/j/Y H:i';

  /// Nov/05/2019 19:42 PST
  static const String abbrShort24HourExtended = 'M/d/Y H:i T';

  /// Nov/5/2019 19:42 PST
  static const String abbrShorter24HourExtended = 'M/j/Y H:i T';

  /// Nov/05/19 7:42 pm
  static const String abbrShortAbbr = 'M/d/y g:i a';

  /// Nov/5/19 7:42 pm
  static const String abbrShorterAbbr = 'M/j/y g:i a';

  /// Nov/05/19 7:42 pm PST
  static const String abbrShortAbbrExtended = 'M/d/y g:i a T';

  /// Nov/5/19 7:42 pm PST
  static const String abbrShorterAbbrExtended = 'M/j/y g:i a T';

  /// Nov/05/19 19:42
  static const String abbrShortAbbr24Hour = 'M/d/y H:i';

  /// Nov/5/19 19:42
  static const String abbrShorterAbbr24Hour = 'M/j/y H:i';

  /// Nov/05/19 19:42 PST
  static const String abbrShortAbbr24HourExtended = 'M/d/y H:i T';

  /// Nov/5/19 19:42 PST
  static const String abbrShorterAbbr24HourExtended = 'M/j/y H:i T';

  /// Nov-05-2019 7:42 pm
  static const String abbrShortHyphenated = 'M-d-Y g:i a';

  /// Nov-5-2019 7:42 pm
  static const String abbrShorterHyphenated = 'M-j-Y g:i a';

  /// Nov-05-2019 7:42 pm PST
  static const String abbrShortHyphenatedExtended = 'M-d-Y g:i a T';

  /// Nov-5-2019 7:42 pm PST
  static const String abbrShorterHyphenatedExtended = 'M-j-Y g:i a T';

  /// Nov-05-2019 19:42
  static const String abbrShortHyphenated24Hour = 'M-d-Y H:i';

  /// Nov-5-2019 19:42
  static const String abbrShorterHyphenated24Hour = 'M-j-Y H:i';

  /// Nov-05-2019 19:42 PST
  static const String abbrShortHyphenated24HourExtended = 'M-d-Y H:i T';

  /// Nov-5-2019 19:42 PST
  static const String abbrShorterHyphenated24HourExtended = 'M-j-Y H:i T';

  /// Nov-05-19 7:42 pm
  static const String abbrShortHyphenatedAbbr = 'M-d-y g:i a';

  /// Nov-5-19 7:42 pm
  static const String abbrShorterHyphenatedAbbr = 'M-j-y g:i a';

  /// Nov-05-19 7:42 pm PST
  static const String abbrShortHyphenatedAbbrExtended = 'M-d-y g:i a T';

  /// Nov-5-19 7:42 pm PST
  static const String abbrShorterHyphenatedAbbrExtended = 'M-j-y g:i a T';

  /// Nov-05-19 19:42
  static const String abbrShortHyphenatedAbbr24Hour = 'M-d-y H:i';

  /// Nov-5-19 19:42
  static const String abbrShorterHyphenatedAbbr24Hour = 'M-j-y H:i';

  /// Nov-05-19 19:42 PST
  static const String abbrShortHyphenatedAbbr24HourExtended = 'M-d-y H:i T';

  /// Nov-5-19 19:42 PST
  static const String abbrShorterHyphenatedAbbr24HourExtended = 'M-j-y H:i T';

  /// 11/05/2019 7:42 pm
  static const String short = r'm/d/Y g:i a';

  /// 11/5/2019 7:42 pm
  static const String shorter = r'n/j/Y g:i a';

  /// 11/05/2019 7:42 pm PST
  static const String shortExtended = r'm/d/Y g:i a T';

  /// 11/5/2019 7:42 pm PST
  static const String shorterExtended = r'n/j/Y g:i a T';

  /// 11/05/2019 19:42
  static const String short24Hour = r'm/d/Y H:i';

  /// 11/5/2019 19:42
  static const String shorter24Hour = r'n/j/Y H:i';

  /// 11/05/2019 19:42 PST
  static const String short24HourExtended = r'm/d/Y H:i T';

  /// 11/5/2019 19:42 PST
  static const String shorter24HourExtended = r'n/j/Y H:i T';

  /// 11/05/19 7:42 pm
  static const String shortAbbr = r'm/d/y g:i a';

  /// 11/5/19 7:42 pm
  static const String shorterAbbr = r'n/j/y g:i a';

  /// 11/05/19 7:42 pm PST
  static const String shortAbbrExtended = r'm/d/y g:i a T';

  /// 11/5/19 7:42 pm PST
  static const String shorterAbbrExtended = r'n/j/y g:i a T';

  /// 11/05/19 19:42
  static const String shortAbbr24Hour = r'm/d/y H:i';

  /// 11/5/19 19:42
  static const String shorterAbbr24Hour = r'n/j/y H:i';

  /// 11/05/19 19:42 PST
  static const String shortAbbr24HourExtended = r'm/d/y H:i T';

  /// 11/5/19 19:42 PST
  static const String shorterAbbr24HourExtended = r'n/j/y H:i T';

  /// 11-05-2019 7:42 pm
  static const String shortHyphenated = r'm-d-Y g:i a';

  /// 11-5-2019 7:42 pm
  static const String shorterHyphenated = r'n-j-Y g:i a';

  /// 11-05-2019 7:42 pm PST
  static const String shortHyphenatedExtended = r'm-d-Y g:i a T';

  /// 11-5-2019 7:42 pm PST
  static const String shorterHyphenatedExtended = r'n-j-Y g:i a T';

  /// 11-05-2019 19:42
  static const String shortHyphenated24Hour = r'm-d-Y H:i';

  /// 11-5-2019 19:42
  static const String shorterHyphenated24Hour = r'n-j-Y H:i';

  /// 11-05-2019 19:42 PST
  static const String shortHyphenated24HourExtended = r'm-d-Y H:i T';

  /// 11-5-2019 19:42 PST
  static const String shorterHyphenated24HourExtended = r'n-j-Y H:i T';

  /// 11-05-19 7:42 pm
  static const String shortHyphenatedAbbr = r'm-d-y g:i a';

  /// 11-5-19 7:42 pm
  static const String shorterHyphenatedAbbr = r'n-j-y g:i a';

  /// 11-05-19 7:42 pm PST
  static const String shortHyphenatedAbbrExtended = r'm-d-y g:i a T';

  /// 11-5-19 7:42 pm PST
  static const String shorterHyphenatedAbbrExtended = r'n-j-y g:i a T';

  /// 11-05-19 19:42
  static const String shortHyphenatedAbbr24Hour = r'm-d-y H:i';

  /// 11-5-19 19:42
  static const String shorterHyphenatedAbbr24Hour = r'n-j-y H:i';

  /// 11-05-19 19:42 PST
  static const String shortHyphenatedAbbr24HourExtended = r'm-d-y H:i T';

  /// 11-5-19 19:42 PST
  static const String shorterHyphenatedAbbr24HourExtended = r'n-j-y H:i T';

  /// A list of every date/time formatting notation constant
  /// found in the [AmericanDateTimeFormats] class.
  static const List<String> all = <String>[
    standard,
    standardWithComma,
    standard24Hour,
    standard24HourWithComma,
    extended,
    extendedWithComma,
    extended24Hour,
    extended24HourWithComma,
    abbr,
    abbrWithComma,
    abbr24Hour,
    abbr24HourWithComma,
    abbrExtended,
    abbrExtendedWithComma,
    abbr24HourExtended,
    abbr24HourExtendedWithComma,
    dayOfWeek,
    dayOfWeekWithComma,
    dayOfWeekExtended,
    dayOfWeekExtendedWithComma,
    dayOfWeek24Hour,
    dayOfWeek24HourWithComma,
    dayOfWeek24HourExtended,
    dayOfWeek24HourExtendedWithComma,
    dayOfWeekAbbr,
    dayOfWeekAbbrWithComma,
    dayOfWeekAbbrExtended,
    dayOfWeekAbbrExtendedWithComma,
    dayOfWeekAbbr24Hour,
    dayOfWeekAbbr24HourWithComma,
    dayOfWeekAbbr24HourExtended,
    dayOfWeekAbbr24HourExtendedWithComma,
    dayOfWeekAbbrAbbr,
    dayOfWeekAbbrAbbrWithComma,
    dayOfWeekAbbrAbbrExtended,
    dayOfWeekAbbrAbbrExtendedWithComma,
    dayOfWeekAbbrAbbr24Hour,
    dayOfWeekAbbrAbbr24HourWithComma,
    dayOfWeekAbbrAbbr24HourExtended,
    dayOfWeekAbbrAbbr24HourExtendedWithComma,
    dayOfWeekAbbrShort,
    dayOfWeekAbbrShortWithComma,
    dayOfWeekAbbrShortExtended,
    dayOfWeekAbbrShortExtendedWithComma,
    dayOfWeekAbbrShort24Hour,
    dayOfWeekAbbrShort24HourWithComma,
    dayOfWeekAbbrShort24HourExtended,
    dayOfWeekAbbrShort24HourExtendedWithComma,
    abbrDayOfWeek,
    abbrDayOfWeekWithComma,
    abbrDayOfWeekExtended,
    abbrDayOfWeekExtendedWithComma,
    abbrDayOfWeek24Hour,
    abbrDayOfWeek24HourWithComma,
    abbrDayOfWeek24HourExtended,
    abbrDayOfWeek24HourExtendedWithComma,
    abbrDayOfWeekAbbr,
    abbrDayOfWeekAbbrWithComma,
    abbrDayOfWeekAbbrExtended,
    abbrDayOfWeekAbbrExtendedWithComma,
    abbrDayOfWeekAbbr24Hour,
    abbrDayOfWeekAbbr24HourWithComma,
    abbrDayOfWeekAbbr24HourExtended,
    abbrDayOfWeekAbbr24HourExtendedWithComma,
    abbrDayOfWeekAbbrAbbr,
    abbrDayOfWeekAbbrAbbrWithComma,
    abbrDayOfWeekAbbrAbbrExtended,
    abbrDayOfWeekAbbrAbbrExtendedWithComma,
    abbrDayOfWeekAbbrAbbr24Hour,
    abbrDayOfWeekAbbrAbbr24HourWithComma,
    abbrDayOfWeekAbbrAbbr24HourExtended,
    abbrDayOfWeekAbbrAbbr24HourExtendedWithComma,
    abbrDayOfWeekAbbrShort,
    abbrDayOfWeekAbbrShortWithComma,
    abbrDayOfWeekAbbrShortExtended,
    abbrDayOfWeekAbbrShortExtendedWithComma,
    abbrDayOfWeekAbbrShort24Hour,
    abbrDayOfWeekAbbrShort24HourWithComma,
    abbrDayOfWeekAbbrShort24HourExtended,
    abbrDayOfWeekAbbrShort24HourExtendedWithComma,
    abbrShort,
    abbrShorter,
    abbrShortExtended,
    abbrShorterExtended,
    abbrShort24Hour,
    abbrShorter24Hour,
    abbrShort24HourExtended,
    abbrShorter24HourExtended,
    abbrShortAbbr,
    abbrShorterAbbr,
    abbrShortAbbrExtended,
    abbrShorterAbbrExtended,
    abbrShortAbbr24Hour,
    abbrShorterAbbr24Hour,
    abbrShortAbbr24HourExtended,
    abbrShorterAbbr24HourExtended,
    short,
    shorter,
    shortExtended,
    shorterExtended,
    short24Hour,
    shorter24Hour,
    short24HourExtended,
    shorter24HourExtended,
    shortAbbr,
    shorterAbbr,
    shortAbbrExtended,
    shorterAbbrExtended,
    shortAbbr24Hour,
    shorterAbbr24Hour,
    shortAbbr24HourExtended,
    shorterAbbr24HourExtended,
    abbrShortHyphenated,
    abbrShorterHyphenated,
    abbrShortHyphenatedExtended,
    abbrShorterHyphenatedExtended,
    abbrShortHyphenated24Hour,
    abbrShorterHyphenated24Hour,
    abbrShortHyphenated24HourExtended,
    abbrShorterHyphenated24HourExtended,
    abbrShortHyphenatedAbbr,
    abbrShorterHyphenatedAbbr,
    abbrShortHyphenatedAbbrExtended,
    abbrShorterHyphenatedAbbrExtended,
    abbrShortHyphenatedAbbr24Hour,
    abbrShorterHyphenatedAbbr24Hour,
    abbrShortHyphenatedAbbr24HourExtended,
    abbrShorterHyphenatedAbbr24HourExtended,
    shortHyphenated,
    shorterHyphenated,
    shortHyphenatedExtended,
    shorterHyphenatedExtended,
    shortHyphenated24Hour,
    shorterHyphenated24Hour,
    shortHyphenated24HourExtended,
    shorterHyphenated24HourExtended,
    shortHyphenatedAbbr,
    shorterHyphenatedAbbr,
    shortHyphenatedAbbrExtended,
    shorterHyphenatedAbbrExtended,
    shortHyphenatedAbbr24Hour,
    shorterHyphenatedAbbr24Hour,
    shortHyphenatedAbbr24HourExtended,
    shorterHyphenatedAbbr24HourExtended,
  ];
}
