import './american/american_date_formats.dart';
import './european/european_date_formats.dart';

export './american/american_date_formats.dart';
export './european/european_date_formats.dart';

/// Commonly used American and European date formatting notation constants.
///
/// All constants are referenced from the [AmericanDateFormats] and
/// [EuropeanDateFormats] classes.
class DateFormats {
  DateFormats._();

  /// November 5, 2019
  static const String american = AmericanDateFormats.standardWithComma;

  /// Nov 5, 2019
  static const String americanAbbr = AmericanDateFormats.abbrWithComma;

  /// Tuesday, November 5, 2019
  static const String americanDayOfWeek =
      AmericanDateFormats.dayOfWeekWithComma;

  /// Tue, November 5, 2019
  static const String americanAbbrDayOfWeek =
      AmericanDateFormats.abbrDayOfWeekWithComma;

  /// Tue, Nov 5, 2019
  static const String americanAbbrDayOfWeekAbbr =
      AmericanDateFormats.abbrDayOfWeekAbbrWithComma;

  /// 11/05/2019
  static const String americanShort = AmericanDateFormats.short;

  /// 5 November 2019
  static const String european = EuropeanDateFormats.standard;

  /// 5 Nov 2019
  static const String europeanAbbr = EuropeanDateFormats.abbr;

  /// Tuesday 5 November 2019
  static const String europeanDayOfWeek = EuropeanDateFormats.dayOfWeek;

  /// Tue 5 November 2019
  static const String europeanAbbrDayOfWeek = EuropeanDateFormats.abbrDayOfWeek;

  /// Tue 05 Nov 2019
  static const String europeanAbbrDayOfWeekAbbr =
      EuropeanDateFormats.abbrDayOfWeekAbbr;

  /// 05/11/2019
  static const String europeanShort = EuropeanDateFormats.short;

  /// Every date formatting notation constant found in the [AmericanDateFormats]
  /// and [EuropeanDateFormats] classes.
  static final List<String> all = List<String>.from(AmericanDateFormats.all)
    ..addAll(EuropeanDateFormats.all);
}
