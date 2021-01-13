import './american/american_date_time_formats.dart';
import './european/european_date_time_formats.dart';

export './american/american_date_time_formats.dart';
export './european/european_date_time_formats.dart';

/// Commonly used date/time formatting notation constants.
class DateTimeFormats {
  DateTimeFormats._();

  /// November 5, 2019 7:42 pm
  static const String american = AmericanDateTimeFormats.standardWithComma;

  /// November 5, 2019 7:42 pm PST
  static const String americanExtended =
      AmericanDateTimeFormats.extendedWithComma;

  /// Nov 5, 2019 7:42 pm
  static const String americanAbbr = AmericanDateTimeFormats.abbrWithComma;

  /// Nov 5, 2019 7:42 pm PST
  static const String americanAbbrExtended =
      AmericanDateTimeFormats.abbrExtendedWithComma;

  /// November 5, 2019 19:42
  static const String american24Hour =
      AmericanDateTimeFormats.standard24HourWithComma;

  /// November 5, 2019 19:42 PST
  static const String american24HourExtended =
      AmericanDateTimeFormats.extended24HourWithComma;

  /// 5 November 2019 19:42
  static const String european = EuropeanDateTimeFormats.standard;

  /// 5 November 2019 19:42 PST
  static const String europeanExtended = EuropeanDateTimeFormats.extended;

  /// 5 Nov 2019 19:42
  static const String europeanAbbr = EuropeanDateTimeFormats.abbr;

  /// 5 Nov 2019 19:42 PST
  static const String europeanAbbrExtended =
      EuropeanDateTimeFormats.abbrExtended;

  /// 05/Nov/2019:19:42:05 -0800
  static const String commonLogFormat = r'd/M/Y:H:i:s O';

  /// Tue, 05-11-2019 19:42:05 PST
  ///
  /// __Note:__ HTTP date/time stamps should be represented in GMT, if using this
  /// constant it is reccomended that your [DateTime] object have a time zone
  /// offset of `±0000`.
  static const String cookie = r'D, d-m-Y H:i:s T';

  /// 2019:11:05 19:42:05
  static const String exif = r'Y:m:d H:i:s';

  /// 2019-11-05T19:42:05-08:00
  static const String iso8601 = r'Y-m-d\TH:i:sP';

  /// 2019-11-05 19:42:05
  static const String mySql = r'Y-m-d H:i:s';

  /// Tue, 05 Nov 2019 19:42:05 -0800
  static const String rss = r'D, d M Y H:i:s O';

  /// 2019-11-05T19:42:05.000
  static const String soap = r'Y-m-d\TH:i:s.v';

  /// 2019-11-05T19:42:05.000-08:00
  static const String soapExtended = r'Y-m-d\TH:i:s.vP';

  /// 20191105T19:42:05
  static const String xmlrpc = r'Ymd\TH:i:s';

  /// 20191105T194205
  static const String xmlrpcCompact = r'Ymd\THis';

  /// A list of every date/time formatting notation contained within
  /// the [DateTimeFormats] class.
  static final List<String> all = <String>[
        commonLogFormat,
        cookie,
        exif,
        iso8601,
        mySql,
        rss,
        soap,
        soapExtended,
        xmlrpc,
        xmlrpcCompact,
      ] +
      AmericanDateTimeFormats.all +
      EuropeanDateTimeFormats.all;
}
