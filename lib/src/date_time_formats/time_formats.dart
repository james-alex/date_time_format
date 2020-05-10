/// Time formatting notation constants.
class TimeFormats {
  TimeFormats._();

  /// 7:42 PM
  static const String standard = r'g:i A';

  /// 7:42 PM PST
  static const String extended = r'g:i A T';

  /// 7:42:05 PM
  static const String withSeconds = r'g:i:s A';

  /// 7:42:05 PM PST
  static const String withSecondsExtended = r'g:i:s A T';

  /// 7:42:05.000 PM
  static const String withMilliseconds = r'g:i:s.v A';

  /// 7:42:05.000 PM PST
  static const String withMillisecondsExtended = r'g:i:s.v A T';

  /// 7:42:05.000000 PM
  static const String withMicroseconds = r'g:i:s.vu A';

  /// 7:42:05.000000 PM PST
  static const String withMicrosecondsExtended = r'g:i:s.vu A T';

  /// 19:42
  static const String standard24Hour = r'H:i';

  /// 19:42 PST
  static const String extended24Hour = r'H:i T';

  /// 19:42:05
  static const String withSeconds24Hour = r'H:i:s';

  /// 19:42:05 PST
  static const String withSeconds24HourExtended = r'H:i:s T';

  /// 19:42:05.000
  static const String withMilliseconds24Hour = r'H:i:s.v';

  /// 19:42:05.000 PST
  static const String withMilliseconds24HourExtended = r'H:i:s.v T';

  /// 19:42:05.000000
  static const String withMicroSeconds24Hour = r'H:i:s.vu';

  /// 19:42:05.000000 PST
  static const String withMicroSeconds24HourExtended = r'H:i:s.vu T';

  /// A list of every time formatting notation constant
  /// found in the [TimeFormats] class.
  static const List<String> all = <String>[
    standard,
    extended,
    withSeconds,
    withSecondsExtended,
    withMilliseconds,
    withMillisecondsExtended,
    withMicroseconds,
    withMicrosecondsExtended,
    standard24Hour,
    extended24Hour,
    withSeconds24Hour,
    withSeconds24HourExtended,
    withMilliseconds24Hour,
    withMilliseconds24HourExtended,
    withMicroSeconds24Hour,
    withMicroSeconds24HourExtended,
  ];
}
