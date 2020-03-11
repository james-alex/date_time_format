/// Commonly used [DateTime] formats.
///
/// The example output documented with every value expresses the date and time:
/// `October 15, 2019 19:42:05 PST`
class DateTimeFormats {
  DateTimeFormats._();

  /// October 15, 2019 7:42 pm
  static const String american = r'F j, Y g:i a';

  /// October 15, 2019 19:42
  static const String american24Hour = r'F j, Y H:i';

  /// Oct 15, 2019 7:42 pm
  static const String americanAbbr = r'M j, Y g:i a';

  /// Oct 15, 2019 19:42
  static const String americanAbbr24Hour = r'M j, Y H:i';

  /// Oct 15, 2019 7:42 pm PST
  static const String americanAbbrExtended = r'M j, Y g:i a T';

  /// Oct 15, 2019 19:42 PST
  static const String americanAbbrExtended24Hour = r'M j, Y H:i T';

  /// Tue, October 15, 2019 7:42 pm
  static const String americanDayOfWeekAbbr = r'D, F j, Y g:i a';

  /// Tue, October 15, 2019 19:42
  static const String americanDayOfWeekAbbr24Hour = r'D, F j, Y H:i';

  /// October 15, 2019 7:42 pm PST
  static const String americanExtended = r'F j, Y g:i a T';

  /// October 15, 2019 19:42 PST
  static const String americanExtended24Hour = r'F j, Y H:i T';

  /// 15/Oct/2019:19:42:05 -0800
  static const String commonLogFormat = r'd/M/Y:H:i:s O';

  /// Tue, 15-10-2019 19:42:05 PST
  ///
  /// __Note:__ HTTP date/time stamps should be represented in GMT, if using this
  /// constant it is reccomended that your [DateTime] object have a time zone
  /// offset of `±0000`.
  static const String cookie = r'D, d-m-Y H:i:s T';

  /// Tuesday, October 15, 2019
  static const String dayOfWeek = r'l, F j, Y';

  /// Tuesday, October 15, 2019 7:42 pm
  static const String dayOfWeek12Hour = r'l, F j, Y g:i a';

  /// Tuesday, October 15, 2019 7:42 pm PST
  static const String dayOfWeek12HourExtended = r'l, F j, Y g:i a T';

  /// Tuesday, October 15, 2019 19:42
  static const String dayOfWeek24Hour = r'l, F j, Y H:i';

  /// Tuesday, October 15, 2019 19:42 PST
  static const String dayOfWeek24HourExtended = r'l, F j, Y H:i T';

  /// Tue, Oct 12, 2019
  static const String dayOfWeekAbbr = r'D, M j, Y';

  /// Tue, Oct 15, 2019 7:42 pm
  static const String dayOfWeekAbbr12Hour = r'D, M j, Y g:i a';

  /// Tue, Oct 15, 2019 7:42 pm PST
  static const String dayOfWeekAbbr12HourExtended = r'D, M j, Y g:i a T';

  /// Tue, Oct 15, 2019 19:42
  static const String dayOfWeekAbbr24Hour = r'D, M j, Y H:i';

  /// Tue, Oct 15, 2019 19:42 PST
  static const String dayOfWeekAbbr24HourExtended = r'D, M j, Y H:i T';

  /// Tue, Oct 15
  static const String dayOfWeekAbbrShort = r'D, M j';

  /// Tue, Oct 15 7:42 pm
  static const String dayOfWeekAbbrShort12Hour = r'D, M j g:i a';

  /// Tue, Oct 15 19:42
  static const String dayOfWeekAbbrShort24Hour = r'D, M j H:i';

  /// Tuesday, October 15
  static const String dayOfWeekShort = r'l, F j';

  /// 15 October 2019
  static const String european = r'j F Y';

  /// 15 October 2019 7:42 pm
  static const String european12Hour = r'j F Y g:i a';

  /// 15 October 2019 7:42 pm
  static const String european12HourExtended = r'j F Y g:i a T';

  /// 15 October 2019 19:42
  static const String european24Hour = r'j F Y H:i';

  /// 15 October 2019 19:42 PST
  static const String european24HourExtended = r'j F Y H:i T';

  /// 15 Oct 2019
  static const String europeanAbbr = r'j M Y';

  /// 15 Oct 2019 7:42 pm
  static const String europeanAbbr12Hour = r'j M Y g:i a';

  /// 15 Oct 2019 7:42 pm PST
  static const String europeanAbbr12HourExtended = r'j M Y g:i a T';

  /// 15 Oct 2019 19:42
  static const String europeanAbbr24Hour = r'j M Y H:i';

  /// 15 Oct 2019 19:42 PST
  static const String europeanAbbr24HourExtended = r'j M Y H:i T';

  /// 2019:10:15 19:42:05
  static const String exif = r'Y:m:d H:i:s';

  /// 2019-10-15T19:42:05-08:00
  static const String iso8601 = r'Y-m-d\TH:i:sP';

  /// 2019-10-15 19:42:05
  static const String mySql = r'Y-m-d H:i:s';

  /// Tue, 15 Oct 2019 19:42:05 -0800
  static const String rss = r'D, d M Y H:i:s O';

  /// 2019-10-15T19:42:05.000
  static const String soap = r'Y-m-d\TH:i:s.v';

  /// 2019-10-15T19:42:05.000-08:00
  static const String soapExtended = r'Y-m-d\TH:i:s.vP';

  /// 7:42 PM
  static const String time12Hour = r'g:i A';

  /// 7:42:05 PM
  static const String time12HourExtended = r'g:i:s A';

  /// 19:42
  static const String time24Hour = r'H:i';

  /// 19:42:05
  static const String time24HourExtended = r'H:i:s';

  /// 2019-10-12T19:42:05-08:00
  static const String w3c = r'Y-m-d\TH:i:sP';

  /// 20191015T19:42:05
  static const String xmlrpc = r'Ymd\TH:i:s';

  /// 20191015T194205
  static const String xmlrpcCompact = r'Ymd\THis';
}
