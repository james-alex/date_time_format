/// European date/time formatting notation constants.
class EuropeanDateTimeFormats {
  EuropeanDateTimeFormats._();

  /// 5 November 2019 19:42
  static const String standard = r'j F Y H:i';

  /// 5 November 2019 19:42 PST
  static const String extended = r'j F Y H:i T';

  /// 5 November 2019 7:42 pm
  static const String standard12Hour = r'j F Y g:i a';

  /// 5 November 2019 7:42 pm
  static const String extended12Hour = r'j F Y g:i a T';

  /// 5 Nov 2019 19:42
  static const String abbr = r'j M Y H:i';

  /// 5 Nov 2019 19:42 PST
  static const String abbrExtended = r'j M Y H:i T';

  /// 5 Nov 2019 7:42 pm
  static const String abbr12Hour = r'j M Y g:i a';

  /// 5 Nov 2019 7:42 pm PST
  static const String abbr12HourExtended = r'j M Y g:i a T';

  /// Tuesday 5 November 2019 19:42
  static const String dayOfWeek = r'l j F Y H:i';

  /// Tuesday 5 November 2019 19:42 PST
  static const String dayOfWeekExtended = r'l j F Y H:i T';

  /// Tuesday 5 November 2019 7:42 pm
  static const String dayOfWeek12Hour = r'l j F Y g:i a';

  /// Tuesday 5 November 2019 7:42 pm PST
  static const String dayOfWeek12HourExtended = r'l j F Y g:i a T';

  /// Tuesday 5 Nov 2019 19:42
  static const String dayOfWeekAbbr = r'l j M Y H:i';

  /// Tuesday 5 Nov 2019 19:42 PST
  static const String dayOfWeekAbbrExtended = r'l j M Y H:i T';

  /// Tuesday 5 Nov 2019 7:42 pm
  static const String dayOfWeekAbbr12Hour = r'l j M Y g:i a';

  /// Tuesday 5 Nov 2019 7:42 pm PST
  static const String dayOfWeekAbbr12HourExtended = r'l j M Y g:i a T';

  /// Tuesday 5 Nov 19 19:42
  static const String dayOfWeekAbbrAbbr = r'l j M y H:i';

  /// Tuesday 5 Nov 19 19:42 PST
  static const String dayOfWeekAbbrAbbrExtended = r'l j M y H:i T';

  /// Tuesday 5 Nov 19 7:42 pm
  static const String dayOfWeekAbbrAbbr12Hour = r'l j M y g:i a';

  /// Tuesday 5 Nov 19 7:42 pm PST
  static const String dayOfWeekAbbrAbbr12HourExtended = r'l j M y g:i a T';

  /// Tuesday 5 Nov 19:42
  static const String dayOfWeekAbbrShort = r'l j M H:i';

  /// Tuesday 5 Nov 19:42 PST
  static const String dayOfWeekAbbrShortExtended = r'l j M H:i T';

  /// Tuesday 5 Nov 7:42 pm
  static const String dayOfWeekAbbrShort12Hour = r'l j M g:i a';

  /// Tuesday 5 Nov 7:42 pm PST
  static const String dayOfWeekAbbrShort12HourExtended = r'l j M g:i a T';

  /// Tue 5 November 2019 19:42
  static const String abbrDayOfWeek = r'D j F Y H:i';

  /// Tue 5 November 2019 19:42 PST
  static const String abbrDayOfWeekExtended = r'D j F Y H:i T';

  /// Tue 5 November 2019 7:42 pm
  static const String abbrDayOfWeek12Hour = r'D j F Y g:i a';

  /// Tue 5 November 2019 7:42 pm PST
  static const String abbrDayOfWeek12HourExtended = r'D j F Y g:i a T';

  /// Tue 5 Nov 2019 19:42
  static const String abbrDayOfWeekAbbr = r'D j M Y H:i';

  /// Tue 5 Nov 2019 19:42 PST
  static const String abbrDayOfWeekAbbrExtended = r'D j M Y H:i T';

  /// Tue 5 Nov 2019 7:42 pm
  static const String abbrDayOfWeekAbbr12Hour = r'D j M Y g:i a';

  /// Tue 5 Nov 2019 7:42 pm PST
  static const String abbrDayOfWeekAbbr12HourExtended = r'D j M Y g:i a T';

  /// Tue 5 Nov 19 19:42
  static const String abbrDayOfWeekAbbrAbbr = r'D j M y H:i';

  /// Tue 5 Nov 19 19:42 PST
  static const String abbrDayOfWeekAbbrAbbrExtended = r'D j M y H:i T';

  /// Tue 5 Nov 19 7:42 pm
  static const String abbrDayOfWeekAbbrAbbr12Hour = r'D j M y g:i a';

  /// Tue 5 Nov 19 7:42 pm PST
  static const String abbrDayOfWeekAbbrAbbr12HourExtended = r'D j M y g:i a T';

  /// Tue 5 Nov 19:42
  static const String abbrDayOfWeekAbbrShort = r'D j M H:i';

  /// Tue 5 Nov 19:42 PST
  static const String abbrDayOfWeekAbbrShortExtended = r'D j M H:i T';

  /// Tue 5 Nov 7:42 pm
  static const String abbrDayOfWeekAbbrShort12Hour = r'D j M g:i a';

  /// Tue 5 Nov 7:42 pm PST
  static const String abbrDayOfWeekAbbrShort12HourExtended = r'D j M g:i a T';

  /// 05/Nov/2019 19:42
  static const String abbrShort = r'd/M/Y H:i';

  /// 5/Nov/2019 19:42
  static const String abbrShorter = r'j/M/Y H:i';

  /// 05/Nov/2019 19:42 PST
  static const String abbrShortExtended = r'd/M/Y H:i T';

  /// 5/Nov/2019 19:42 PST
  static const String abbrShorterExtended = r'j/M/Y H:i T';

  /// 05/Nov/2019 7:42 pm
  static const String abbrShort12Hour = r'd/M/Y g:i a';

  /// 5/Nov/2019 7:42 pm
  static const String abbrShorter12Hour = r'j/M/Y g:i a';

  /// 05/Nov/2019 7:42 pm PST
  static const String abbrShort12HourExtended = r'd/M/Y g:i a T';

  /// 5/Nov/2019 7:42 pm PST
  static const String abbrShorter12HourExtended = r'j/M/Y g:i a T';

  /// 05/Nov/19 19:42
  static const String abbrShortAbbr = r'd/M/y H:i';

  /// 5/Nov/19 19:42
  static const String abbrShorterAbbr = r'j/M/y H:i';

  /// 05/Nov/19 19:42 PST
  static const String abbrShortAbbrExtended = r'd/M/y H:i T';

  /// 5/Nov/19 19:42 PST
  static const String abbrShorterAbbrExtended = r'j/M/y H:i T';

  /// 05/Nov/19 7:42 pm
  static const String abbrShortAbbr12Hour = r'd/M/y g:i a';

  /// 5/Nov/19 7:42 pm
  static const String abbrShorterAbbr12Hour = r'j/M/y g:i a';

  /// 05/Nov/19 7:42 pm PST
  static const String abbrShortAbbr12HourExtended = r'd/M/y g:i a T';

  /// 5/Nov/19 7:42 pm PST
  static const String abbrShorterAbbr12HourExtended = r'j/M/y g:i a T';

  /// 05-Nov-2019 19:42
  static const String abbrShortHyphenated = r'd-M-Y H:i';

  /// 5-Nov-2019 19:42
  static const String abbrShorterHyphenated = r'j-M-Y H:i';

  /// 05-Nov-2019 19:42 PST
  static const String abbrShortHyphenatedExtended = r'd-M-Y H:i T';

  /// 5-Nov-2019 19:42 PST
  static const String abbrShorterHyphenatedExtended = r'j-M-Y H:i T';

  /// 05-Nov-2019 7:42 pm
  static const String abbrShortHyphenated12Hour = r'd-M-Y g:i a';

  /// 5-Nov-2019 7:42 pm
  static const String abbrShorterHyphenated12Hour = r'j-M-Y g:i a';

  /// 05-Nov-2019 7:42 pm PST
  static const String abbrShortHyphenated12HourExtended = r'd-M-Y g:i a T';

  /// 5-Nov-2019 7:42 pm PST
  static const String abbrShorterHyphenated12HourExtended = r'j-M-Y g:i a T';

  /// 05-Nov-19 19:42
  static const String abbrShortHyphenatedAbbr = r'd-M-y H:i';

  /// 5-Nov-19 19:42
  static const String abbrShorterHyphenatedAbbr = r'j-M-y H:i';

  /// 05-Nov-19 19:42 PST
  static const String abbrShortHyphenatedAbbrExtended = r'd-M-y H:i T';

  /// 5-Nov-19 19:42 PST
  static const String abbrShorterHyphenatedAbbrExtended = r'j-M-y H:i T';

  /// 05-Nov-19 7:42 pm
  static const String abbrShortHyphenatedAbbr12Hour = r'd-M-y g:i a';

  /// 5-Nov-19 7:42 pm
  static const String abbrShorterHyphenatedAbbr12Hour = r'j-M-y g:i a';

  /// 05-Nov-19 7:42 pm PST
  static const String abbrShortHyphenatedAbbr12HourExtended = r'd-M-y g:i a T';

  /// 5-Nov-19 7:42 pm PST
  static const String abbrShorterHyphenatedAbbr12HourExtended =
      r'j-M-y g:i a T';

  /// 05/11/2019 19:42
  static const String short = r'd/m/Y H:i';

  /// 5/11/2019 19:42
  static const String shorter = r'j/n/Y H:i';

  /// 05/11/2019 19:42 PST
  static const String shortExtended = r'd/m/Y H:i T';

  /// 5/11/2019 19:42 PST
  static const String shorterExtended = r'j/n/Y H:i T';

  /// 05/11/2019 7:42 pm
  static const String short12Hour = r'd/m/Y g:i a';

  /// 5/11/2019 7:42 pm
  static const String shorter12Hour = r'j/n/Y g:i a';

  /// 05/11/2019 7:42 pm PST
  static const String short12HourExtended = r'd/m/Y g:i a T';

  /// 5/11/2019 7:42 pm PST
  static const String shorter12HourExtended = r'j/n/Y g:i a T';

  /// 05/11/19 19:42
  static const String shortAbbr = r'd/m/y H:i';

  /// 5/11/19 19:42
  static const String shorterAbbr = r'j/n/y H:i';

  /// 05/11/19 19:42 PST
  static const String shortAbbrExtended = r'd/m/y H:i T';

  /// 5/11/19 19:42 PST
  static const String shorterAbbrExtended = r'j/n/y H:i T';

  /// 05/11/19 7:42 pm
  static const String shortAbbr12Hour = r'd/m/y g:i a';

  /// 5/11/19 7:42 pm
  static const String shorterAbbr12Hour = r'j/n/y g:i a';

  /// 05/11/19 7:42 pm PST
  static const String shortAbbr12HourExtended = r'd/m/y g:i a T';

  /// 5/11/19 7:42 pm PST
  static const String shorterAbbr12HourExtended = r'j/n/y g:i a T';

  /// 05-11-2019 19:42
  static const String shortHyphenated = r'd-m-Y H:i';

  /// 5-11-2019 19:42
  static const String shorterHyphenated = r'j-n-Y H:i';

  /// 05-11-2019 19:42 PST
  static const String shortHyphenatedExtended = r'd-m-Y H:i T';

  /// 5-11-2019 19:42 PST
  static const String shorterHyphenatedExtended = r'j-n-Y H:i T';

  /// 05-11-2019 7:42 pm
  static const String shortHyphenated12Hour = r'd-m-Y g:i a';

  /// 5-11-2019 7:42 pm
  static const String shorterHyphenated12Hour = r'j-n-Y g:i a';

  /// 05-11-2019 7:42 pm PST
  static const String shortHyphenated12HourExtended = r'd-m-Y g:i a T';

  /// 5-11-2019 7:42 pm PST
  static const String shorterHyphenated12HourExtended = r'j-n-Y g:i a T';

  /// 05-11-19 19:42
  static const String shortHyphenatedAbbr = r'd-m-y H:i';

  /// 5-11-19 19:42
  static const String shorterHyphenatedAbbr = r'j-n-y H:i';

  /// 05-11-19 19:42 PST
  static const String shortHyphenatedAbbrExtended = r'd-m-y H:i T';

  /// 5-11-19 19:42 PST
  static const String shorterHyphenatedAbbrExtended = r'j-n-y H:i T';

  /// 05-11-19 7:42 pm
  static const String shortHyphenatedAbbr12Hour = r'd-m-y g:i a';

  /// 5-11-19 7:42 pm
  static const String shorterHyphenatedAbbr12Hour = r'j-n-y g:i a';

  /// 05-11-19 7:42 pm PST
  static const String shortHyphenatedAbbr12HourExtended = r'd-m-y g:i a T';

  /// 5-11-19 7:42 pm PST
  static const String shorterHyphenatedAbbr12HourExtended = r'j-n-y g:i a T';

  /// A list of every date/time formatting notation constant
  /// found in the [EuropeanDateTimeFormats] class.
  static const List<String> all = <String>[
    standard,
    extended,
    standard12Hour,
    extended12Hour,
    abbr,
    abbrExtended,
    abbr12Hour,
    abbr12HourExtended,
    dayOfWeek,
    dayOfWeekExtended,
    dayOfWeek12Hour,
    dayOfWeek12HourExtended,
    dayOfWeekAbbr,
    dayOfWeekAbbrExtended,
    dayOfWeekAbbr12Hour,
    dayOfWeekAbbr12HourExtended,
    dayOfWeekAbbrAbbr,
    dayOfWeekAbbrAbbrExtended,
    dayOfWeekAbbrAbbr12Hour,
    dayOfWeekAbbrAbbr12HourExtended,
    dayOfWeekAbbrShort,
    dayOfWeekAbbrShortExtended,
    dayOfWeekAbbrShort12Hour,
    dayOfWeekAbbrShort12HourExtended,
    abbrDayOfWeek,
    abbrDayOfWeekExtended,
    abbrDayOfWeek12Hour,
    abbrDayOfWeek12HourExtended,
    abbrDayOfWeekAbbr,
    abbrDayOfWeekAbbrExtended,
    abbrDayOfWeekAbbr12Hour,
    abbrDayOfWeekAbbr12HourExtended,
    abbrDayOfWeekAbbrAbbr,
    abbrDayOfWeekAbbrAbbrExtended,
    abbrDayOfWeekAbbrAbbr12Hour,
    abbrDayOfWeekAbbrAbbr12HourExtended,
    abbrDayOfWeekAbbrShort,
    abbrDayOfWeekAbbrShortExtended,
    abbrDayOfWeekAbbrShort12Hour,
    abbrDayOfWeekAbbrShort12HourExtended,
    abbrShort,
    abbrShorter,
    abbrShortExtended,
    abbrShorterExtended,
    abbrShort12Hour,
    abbrShorter12Hour,
    abbrShort12HourExtended,
    abbrShorter12HourExtended,
    abbrShortAbbr,
    abbrShorterAbbr,
    abbrShortAbbrExtended,
    abbrShorterAbbrExtended,
    abbrShortAbbr12Hour,
    abbrShorterAbbr12Hour,
    abbrShortAbbr12HourExtended,
    abbrShorterAbbr12HourExtended,
    abbrShortHyphenated,
    abbrShorterHyphenated,
    abbrShortHyphenatedExtended,
    abbrShorterHyphenatedExtended,
    abbrShortHyphenated12Hour,
    abbrShorterHyphenated12Hour,
    abbrShortHyphenated12HourExtended,
    abbrShorterHyphenated12HourExtended,
    abbrShortHyphenatedAbbr,
    abbrShorterHyphenatedAbbr,
    abbrShortHyphenatedAbbrExtended,
    abbrShorterHyphenatedAbbrExtended,
    abbrShortHyphenatedAbbr12Hour,
    abbrShorterHyphenatedAbbr12Hour,
    abbrShortHyphenatedAbbr12HourExtended,
    abbrShorterHyphenatedAbbr12HourExtended,
    short,
    shorter,
    shortExtended,
    shorterExtended,
    short12Hour,
    shorter12Hour,
    short12HourExtended,
    shorter12HourExtended,
    shortAbbr,
    shorterAbbr,
    shortAbbrExtended,
    shorterAbbrExtended,
    shortAbbr12Hour,
    shorterAbbr12Hour,
    shortAbbr12HourExtended,
    shorterAbbr12HourExtended,
    shortHyphenated,
    shorterHyphenated,
    shortHyphenatedExtended,
    shorterHyphenatedExtended,
    shortHyphenated12Hour,
    shorterHyphenated12Hour,
    shortHyphenated12HourExtended,
    shorterHyphenated12HourExtended,
    shortHyphenatedAbbr,
    shorterHyphenatedAbbr,
    shortHyphenatedAbbrExtended,
    shorterHyphenatedAbbrExtended,
    shortHyphenatedAbbr12Hour,
    shorterHyphenatedAbbr12Hour,
    shortHyphenatedAbbr12HourExtended,
    shorterHyphenatedAbbr12HourExtended,
  ];
}
