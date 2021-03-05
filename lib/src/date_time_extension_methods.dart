import 'date_time_format.dart';
import 'date_time_formats/date_time_formats.dart';

/// Adds [DateTimeFormat]'s [format] and [relative] methods
/// to the [DateTime] class.
extension DateTimeFormatter on DateTime {
  /// Formats `this` according to the notation [format].
  ///
  /// [format] accepts the following standard notations:
  ///
  /// `d` : Day of month (01 - 31)
  ///
  /// `j` : Day of month, without leading 0s (1 - 31)
  ///
  /// `D` : An abbreviated textual representation of a day (Mon - Sun)
  ///
  /// `l` : A textual representation of a day (Monday - Sunday)
  ///
  /// `S` : Suffix of a day (st, th, nd)
  ///
  /// `z` : The day of the year (starting from 0)
  ///
  /// `F` : A textual representation of a month (January - December)
  ///
  /// `M` : An abbreviated textual representation of a month (Jan - Dec)
  ///
  /// `m` : Numeric representation of a month (01 - 12)
  ///
  /// `n` : Numeric representation of a month, without leading 0s (1 - 12)
  ///
  /// `Y` : Full numeric representation of a year (e.g. 2019)
  ///
  /// `y` : A two digit representation of a year (e.g. 19)
  ///
  /// `a` : Ante meridiem and post meridiem, lowercase (am or pm)
  ///
  /// `A` : Ante meridiem and post meridiem, uppercase (AM or PM)
  ///
  /// `g` : 12-hour format of an hour, without leading 0s (1 - 12)
  ///
  /// `h` : 12-hour format of an hour (01 - 12)
  ///
  /// `G` : 24-hour format of an hour, without leading 0s (0 - 23)
  ///
  /// `H` : 24-hour format of an hour (00 - 23)
  ///
  /// `i` : Minutes (0 - 59)
  ///
  /// `s` : Seconds (0 - 59)
  ///
  /// `v` : Milliseconds (0 - 999)
  ///
  /// `u` : Microseconds (0 - 999)
  ///
  /// `e` : System time zone identifier (Returns [DateTime.timeZoneName], which
  /// is provided by the operating system and may be a name or abbreviation.)
  ///
  /// `O` : Difference to Greenwich Time (GMT) in hours (±0000)
  ///
  /// `P` : Difference to Greenwich Time (GMT) in hours with a colon (±00:00)
  ///
  /// `T` : Time zone abbreviation (Identifies the time zone from
  /// [DateTime.timeZoneName].)
  ///
  /// `c` : ISO 8601 date (e.g. 2019-10-15T19:42:05-08:00)
  ///
  /// `r` : RFC 2822 date (Tue, 15 Oct 2019 17:42:05 -0800)
  ///
  /// `U` : Seconds since Unix Epoch
  ///
  /// `\` : Escape character
  ///
  /// __See:__ [DateTimeFormats] for common formatting notations.
  String format([String format = DateTimeFormats.iso8601]) =>
      DateTimeFormat.format(this, format: format);

  /// Formats `this` to a human-readable relative time format, relative to [to].
  ///
  /// [to] defaults to `DateTime.now()`.
  ///
  /// If [formatBefore] is not `null`, [dateTime] will be formatted to
  /// the format specified by [format] if [dateTime] occured before
  /// [formatBefore].
  ///
  /// If [abbr] is `true`, the labels for the units of time (`seconds`,
  /// `minutes`, `hours`, etc...) will be abbreviated to the first character
  /// of each label, respectively. If `false`, the entire word will be returned.
  ///
  /// If [round] is `true`, units of time will be rounded up to the
  /// minimum allowed unit of time, as defined by [levelOfPrecision]
  /// and [minUnitOfTime], see below. If `false`, values below the
  /// minimum allowed unit of time will be truncated.
  ///
  /// [levelOfPrecision] defines the minimum allowable degree of separation from
  /// the maximum unit of time counted. I.e. minutes are `1` degree removed from
  /// hours, and seconds are `2` degrees removed from hours but only `1` degree
  /// removed from minutes. __Note:__ Weeks will not be counted as a unit of
  /// time if [excludeWeeks] is `true`, see below.
  ///
  /// [minUnitOfTime] is the minimum unit of time that will be included in
  /// the count. `minUnitOfTime.index` must be `>= maxUnitOfTime.index`.
  ///
  /// [maxUnitOfTime] is the maximum unit of time that will be included in
  /// the count.
  ///
  /// If [excludeWeeks] is `true`, weeks won't be counted. Instead, days
  /// will counted up to their respective month's number of days.
  ///
  /// If [ifNow] is supplied, the value of [ifNow] will be returned in the
  /// event the difference is less than the smallest allowed interval of time,
  /// otherwise an empty string will be returned.
  ///
  /// If [prependIfBefore] is not `null` and [dateTime] occurs before
  /// [relativeTo], its value will be prepended to the returned string.
  ///
  /// If [appendIfAfter] is not `null` and [dateTime] occurs after
  /// [relativeTo], its value will be appended to the returned string.
  String relative({
    DateTime? to,
    Duration? formatAfter,
    String format = AmericanDateTimeFormats.abbrWithComma,
    bool round = true,
    bool abbr = false,
    Map<UnitOfTime, String>? abbreviations,
    int levelOfPrecision = 0,
    UnitOfTime minUnitOfTime = UnitOfTime.second,
    UnitOfTime maxUnitOfTime = UnitOfTime.year,
    bool excludeWeeks = false,
    String? ifNow,
    String? prependIfBefore,
    String? appendIfAfter,
  }) {
    assert(minUnitOfTime.index >= maxUnitOfTime.index);

    return DateTimeFormat.relative(
      this,
      relativeTo: to,
      formatAfter: formatAfter,
      format: format,
      round: round,
      abbr: abbr,
      abbreviations: abbreviations,
      levelOfPrecision: levelOfPrecision,
      minUnitOfTime: minUnitOfTime,
      maxUnitOfTime: maxUnitOfTime,
      excludeWeeks: excludeWeeks,
      ifNow: ifNow,
      prependIfBefore: prependIfBefore,
      appendIfAfter: appendIfAfter,
    );
  }
}
