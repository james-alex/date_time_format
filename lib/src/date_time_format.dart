import './date_time_formats/date_time_formats.dart';
import './helpers/timezones.dart';

/// The different intervals of time that can be counted by the
/// [DateTimeFormat.relative] method.
enum UnitOfTime {
  /// Years
  year,

  /// Months
  month,

  /// Weeks
  week,

  /// Days
  day,

  /// Hours
  hour,

  /// Minutes
  minute,

  /// Seconds
  second,

  /// Milliseconds
  millisecond,

  /// Microseconds
  microsecond,
}

/// A utility class for formatting [DateTime]s.
class DateTimeFormat {
  DateTimeFormat._();

  /// Formats [dateTime] according to the notation [format].
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
  static String format(
    DateTime dateTime, {
    String format = DateTimeFormats.iso8601,
  }) {
    var formattedDateTime = '';

    var nextCharacterIsEscaped = false;

    format.split('').forEach((notation) {
      String? value;

      if (nextCharacterIsEscaped) {
        nextCharacterIsEscaped = false;
      } else {
        switch (notation) {
          // Day of month (01 to 31)
          case 'd':
            value = dateTime.day.toString().padLeft(2, '0');
            break;
          // Day of month, without leading 0s (1 to 31)
          case 'j':
            value = dateTime.day.toString();
            break;
          // An abbreviated textual representation of a day (Mon through Sun)
          case 'D':
            value = _dayOfWeek(dateTime.weekday, true);
            break;
          // A textual representation of a day (Monday through Sunday)
          case 'l':
            value = _dayOfWeek(dateTime.weekday, false);
            break;
          // Suffix of a day
          case 'S':
            value = _suffixOfDay(dateTime.day);
            break;
          // The day of the year (starting from 0)
          case 'z':
            value = _dayOfYear(dateTime).toString();
            break;
          // A textual representation of a month (January through December)
          case 'F':
            value = _month(dateTime.month, false);
            break;
          // An abbreviated textual representation of a month (Jan through Dec)
          case 'M':
            value = _month(dateTime.month, true);
            break;
          // Numeric representation of a month (01 to 12)
          case 'm':
            value = dateTime.month.toString().padLeft(2, '0');
            break;
          // Numeric representation of a month, without leading 0s (1 to 12)
          case 'n':
            value = dateTime.month.toString();
            break;
          // Full numeric representation of a year (e.g. 2019)
          case 'Y':
            value = dateTime.year.toString();
            break;
          // A two digit representation of a year (e.g. 19)
          case 'y':
            value = dateTime.year.toString();
            value = value.substring(value.length - 2);
            break;
          // Ante meridiem and post meridiem, lowercase (am or pm)
          case 'a':
            value = dateTime.hour < 12 ? 'am' : 'pm';
            break;
          // Ante meridiem and post meridiem, uppercase (AM or PM)
          case 'A':
            value = dateTime.hour < 12 ? 'AM' : 'PM';
            break;
          // 12-hour format of an hour, without leading 0s (1 through 12)
          case 'g':
            value = (dateTime.hour % 12).toString();
            if (value == '0') value = '12';
            break;
          // 12-hour format of an hour (01 through 12)
          case 'h':
            value = (dateTime.hour % 12).toString().padLeft(2, '0');
            if (value == '00') value = '12';
            break;
          // 24-hour format of an hour, without leading 0s (0 through 23)
          case 'G':
            value = dateTime.hour.toString();
            break;
          // 24-hour format of an hour (00 through 23)
          case 'H':
            value = dateTime.hour.toString().padLeft(2, '0');
            break;
          // Minutes
          case 'i':
            value = dateTime.minute.toString().padLeft(2, '0');
            break;
          // Seconds
          case 's':
            value = dateTime.second.toString().padLeft(2, '0');
            break;
          // Milliseconds (0 - 999)
          case 'v':
            value = dateTime.millisecond.toString().padLeft(3, '0');
            break;
          // Microseconds (0 - 999)
          case 'u':
            value = dateTime.microsecond.toString().padLeft(3, '0');
            break;
          // System time zone identifier
          case 'e':
            value = dateTime.timeZoneName;
            break;
          // Difference to Greenwich Time (GMT) in hours
          case 'O':
            value = _timeZoneOffset(dateTime.timeZoneOffset);
            break;
          // Difference to Greenwich Time (GMT) in hours with a colon
          case 'P':
            value = _timeZoneOffset(dateTime.timeZoneOffset, true);
            break;
          // Time zone abbreviation
          case 'T':
            value = _timeZoneAbbreviation(dateTime);
            break;
          // ISO 8601 date (2019-10-15T19:42:05-08:00)
          case 'c':
            value = DateTimeFormat.format(dateTime,
                format: DateTimeFormats.iso8601);
            break;
          // RFC 2822 date (Tue, 15 Oct 2019 17:42:05 -0800)
          case 'r':
            value =
                DateTimeFormat.format(dateTime, format: DateTimeFormats.rss);
            break;
          // Seconds since Unix Epoch
          case 'U':
            value = (dateTime.millisecondsSinceEpoch / 1000).round().toString();
            break;
          // Escape character
          case r'\':
            value = '';
            nextCharacterIsEscaped = true;
            break;
        }
      }

      formattedDateTime += value ?? notation;
    });

    return formattedDateTime;
  }

  /// Formats [dateTime] to a human-readable relative time format.
  ///
  /// [relativeTo] defaults to `DateTime.now()`.
  ///
  /// If [formatBefore] is not `null`, [dateTime] will be formatted to
  /// the format specified by [format] if [dateTime] occured before
  /// [formatBefore].
  ///
  /// If [round] is `true`, units of time will be rounded up to the
  /// minimum allowed unit of time, as defined by [levelOfPrecision]
  /// and [minUnitOfTime], see below. If `false`, values below the
  /// minimum allowed unit of time will be truncated.
  ///
  /// If [abbr] is `true`, the labels for the units of time (`seconds`,
  /// `minutes`, `hours`, etc...) will be abbreviated to the first character
  /// of each label, respectively. If `false`, the entire word will be returned.
  ///
  /// A map of [abbreviations] can be provided to supply custom abbreviations
  /// to use for any unit of time. The abbreviations will only be applied if
  /// [abbr] is `true`.
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
  static String relative(
    DateTime dateTime, {
    DateTime? relativeTo,
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

    relativeTo ??= DateTime.now();

    var difference = dateTime.difference(relativeTo).abs();

    if (formatAfter != null && difference >= formatAfter) {
      return DateTimeFormat.format(dateTime, format: format);
    }

    final inverse = relativeTo.isBefore(dateTime);

    var startFrom = inverse ? relativeTo : dateTime;

    if (difference < _minUnitOfTime(minUnitOfTime, startFrom, inverse)) {
      return ifNow ?? '';
    }

    int count(
      Duration duration, [
      Duration Function(DateTime, bool)? setDuration,
    ]) {
      var count = 0;

      while (difference >= duration) {
        count++;
        difference -= duration;
        startFrom = startFrom.add(duration);
        if (setDuration != null) duration = setDuration(startFrom, inverse);
      }

      return count;
    }

    void reduce(Duration duration) {
      if (duration.inMicroseconds > 0) {
        difference -= duration;
      }
    }

    final unitsOfTime = <UnitOfTime, int>{};

    for (var unitOfTime in UnitOfTime.values) {
      var units = 0;

      if (maxUnitOfTime.index <= unitOfTime.index) {
        switch (unitOfTime) {
          case UnitOfTime.year:
            units = count(_lengthOfYear(startFrom, inverse), _lengthOfYear);
            break;
          case UnitOfTime.month:
            units = count(_lengthOfMonth(startFrom, inverse), _lengthOfMonth);
            break;
          case UnitOfTime.week:
            units = excludeWeeks ? 0 : count(Duration(days: 7));
            break;
          case UnitOfTime.day:
            units = difference.inDays;
            reduce(Duration(days: units));
            break;
          case UnitOfTime.hour:
            units = difference.inHours;
            reduce(Duration(hours: units));
            break;
          case UnitOfTime.minute:
            units = difference.inMinutes;
            reduce(Duration(minutes: units));
            break;
          case UnitOfTime.second:
            units = difference.inSeconds;
            reduce(Duration(seconds: units));
            break;
          case UnitOfTime.millisecond:
            units = difference.inMilliseconds;
            reduce(Duration(milliseconds: units));
            break;
          case UnitOfTime.microsecond:
            units = difference.inMicroseconds;
            break;
        }
      }

      unitsOfTime.addAll({unitOfTime: units});
    }

    final maxUnitOfTimeIndex =
        unitsOfTime.values.toList().indexWhere((count) => count > 0);

    var minUnitOfTimeIndex = maxUnitOfTimeIndex + levelOfPrecision;

    if (levelOfPrecision > 0) {
      if (excludeWeeks && minUnitOfTimeIndex >= UnitOfTime.week.index) {
        minUnitOfTimeIndex++;
      }

      minUnitOfTimeIndex = minUnitOfTimeIndex.clamp(0, minUnitOfTime.index);
    }

    // Increase the value assocaited with [unit] in [unitsOfTime] by `1`.
    void increaseUnitOfTime(UnitOfTime unit) {
      if (unitsOfTime.containsKey(unit)) {
        unitsOfTime[unit] = (unitsOfTime[unit] ?? 0) + 1;
      } else {
        unitsOfTime.addAll({unit: 1});
      }
    }

    for (var unitOfTime in unitsOfTime.keys.toList().reversed) {
      final lastUnit = unitOfTime.index <= minUnitOfTimeIndex;

      if (round && maxUnitOfTime.index <= unitOfTime.index - 1) {
        final units = unitsOfTime[unitOfTime];

        switch (unitOfTime) {
          case UnitOfTime.year:
            // Years can't be rounded.
            break;
          case UnitOfTime.month:
            if (units! >= 12 || (!lastUnit && units >= 6)) {
              unitsOfTime[UnitOfTime.month] = 0;
              increaseUnitOfTime(UnitOfTime.year);
            }

            break;
          case UnitOfTime.week:
            if (units! >= 4 || (!lastUnit && units >= 2)) {
              unitsOfTime[UnitOfTime.week] = 0;
              increaseUnitOfTime(UnitOfTime.month);
            }

            break;
          case UnitOfTime.day:
            if (excludeWeeks) {
              var month = (inverse ? dateTime.month : relativeTo.month) - 1;
              var year = inverse ? dateTime.year : relativeTo.year;
              if (month == 0) {
                month = 12;
                year--;
              }

              final daysInMonth = _daysInMonth(month, year);

              if (units! >= daysInMonth ||
                  (!lastUnit && units > daysInMonth / 2)) {
                unitsOfTime[UnitOfTime.day] = 0;
                increaseUnitOfTime(UnitOfTime.month);
              }
            } else {
              if (units! >= 7 || (!lastUnit && units >= 4)) {
                unitsOfTime[UnitOfTime.day] = 0;
                increaseUnitOfTime(UnitOfTime.week);
              }
            }

            break;
          case UnitOfTime.hour:
            if (units! >= 24 || (!lastUnit && units >= 12)) {
              unitsOfTime[UnitOfTime.hour] = 0;
              increaseUnitOfTime(UnitOfTime.day);
            }

            break;
          case UnitOfTime.minute:
            if (units! >= 60 || (!lastUnit && units >= 30)) {
              unitsOfTime[UnitOfTime.minute] = 0;
              increaseUnitOfTime(UnitOfTime.hour);
            }

            break;
          case UnitOfTime.second:
            if (units! >= 60 || (!lastUnit && units >= 30)) {
              unitsOfTime[UnitOfTime.second] = 0;
              increaseUnitOfTime(UnitOfTime.minute);
            }

            break;
          case UnitOfTime.millisecond:
            if (units! >= 1000 || (!lastUnit && units >= 500)) {
              unitsOfTime[UnitOfTime.millisecond] = 0;
              increaseUnitOfTime(UnitOfTime.second);
            }

            break;
          case UnitOfTime.microsecond:
            if (units! >= 1000 || (!lastUnit && units >= 500)) {
              unitsOfTime[UnitOfTime.microsecond] = 0;
              increaseUnitOfTime(UnitOfTime.millisecond);
            }

            break;
        }
      }

      if (lastUnit) break;

      unitsOfTime.remove(unitOfTime);
    }

    unitsOfTime.removeWhere((key, value) => value == 0);

    var formattedString = _formatUnits(unitsOfTime, abbr, abbreviations);

    if (prependIfBefore != null && dateTime.isAfter(relativeTo)) {
      formattedString = '$prependIfBefore $formattedString';
    }

    if (appendIfAfter != null && dateTime.isBefore(relativeTo)) {
      formattedString = '$formattedString $appendIfAfter';
    }

    return formattedString;
  }

  static Duration _minUnitOfTime(
    UnitOfTime unitOfTime,
    DateTime dateTime,
    bool inverse,
  ) {
    late Duration duration;

    switch (unitOfTime) {
      case UnitOfTime.year:
        duration = _lengthOfYear(dateTime, inverse);
        break;
      case UnitOfTime.month:
        duration = _lengthOfMonth(dateTime, inverse);
        break;
      case UnitOfTime.week:
        duration = Duration(days: 7);
        break;
      case UnitOfTime.day:
        duration = Duration(days: 1);
        break;
      case UnitOfTime.hour:
        duration = Duration(hours: 1);
        break;
      case UnitOfTime.minute:
        duration = Duration(minutes: 1);
        break;
      case UnitOfTime.second:
        duration = Duration(seconds: 1);
        break;
      case UnitOfTime.millisecond:
        duration = Duration(milliseconds: 1);
        break;
      case UnitOfTime.microsecond:
        duration = Duration(microseconds: 1);
        break;
    }

    return duration;
  }

  /// Formats every unit of time included in [units] in sequential order with
  /// the [_formatUnit] method, separating each unit with a space (` `).
  static String _formatUnits(
    Map<UnitOfTime, int> units,
    bool abbr,
    Map<UnitOfTime, String>? abbreviations,
  ) {
    var formattedString = '';

    units.forEach((key, value) {
      final unit = _formatUnit(key, value, abbr, abbreviations);
      if (formattedString.isNotEmpty) formattedString += ' ';
      formattedString += unit;
    });

    return formattedString;
  }

  /// Formats a [unit] of time as a human-readable string.
  static String _formatUnit(
    UnitOfTime unit,
    int count,
    bool abbr,
    Map<UnitOfTime, String>? abbreviations,
  ) {
    var label = unit.toString().split('.').last;

    if (abbr) {
      if (abbreviations?.keys.contains(unit) == true) {
        label = abbreviations![unit]!;
      } else if (unit == UnitOfTime.month) {
        label = 'mo';
      } else if (unit == UnitOfTime.millisecond) {
        label = 'ms';
      } else if (unit == UnitOfTime.microsecond) {
        label = 'μs';
      } else {
        label = label.substring(0, 1);
      }
    } else {
      label = ' $label';
      if (count > 1) label += 's';
    }

    return '$count$label';
  }

  /// Returns the length of the year represented by [dateTime] as a [Duration].
  static Duration _lengthOfYear(DateTime dateTime, bool inverse) {
    var duration = Duration(days: 365);

    if (_isLeapYear(dateTime.year)) {
      final dayOfYear = _dayOfYear(dateTime);

      if ((!inverse && dayOfYear >= 59) || (inverse && dayOfYear < 59)) {
        duration += Duration(days: 1);
      }
    }

    return duration;
  }

  /// Returns the length of the month represented by [dateTime] as a [Duration].
  static Duration _lengthOfMonth(DateTime dateTime, bool inverse) {
    var month = inverse ? dateTime.month - 1 : dateTime.month;
    var year = dateTime.year;

    if (month == 0) {
      month = 12;
      year -= 1;
    } else if (month == 13) {
      month = 1;
      year += 1;
    }

    return Duration(days: _daysInMonth(month, year));
  }

  /// Returns the name of the day of the week, abbreviated if [abbr] is `true`.
  ///
  /// [dayOfWeek] must be in the range of `1-7`.
  ///
  /// The week starts from Monday.
  static String _dayOfWeek(int dayOfWeek, bool abbr) {
    assert(dayOfWeek >= 1 && dayOfWeek <= 7);

    late String nameOfDay;

    switch (dayOfWeek) {
      case 1:
        nameOfDay = abbr ? 'Mon' : 'Monday';
        break;
      case 2:
        nameOfDay = abbr ? 'Tue' : 'Tuesday';
        break;
      case 3:
        nameOfDay = abbr ? 'Wed' : 'Wednesday';
        break;
      case 4:
        nameOfDay = abbr ? 'Thu' : 'Thursday';
        break;
      case 5:
        nameOfDay = abbr ? 'Fri' : 'Friday';
        break;
      case 6:
        nameOfDay = abbr ? 'Sat' : 'Saturday';
        break;
      case 7:
        nameOfDay = abbr ? 'Sun' : 'Sunday';
        break;
    }

    return nameOfDay;
  }

  /// Returns the name of the month, abbreviated if [abbr] is `true`.
  ///
  /// [month] must be in the range of `1-12`.
  static String _month(int month, bool abbr) {
    assert(month >= 1 && month <= 12);

    late String nameOfMonth;

    switch (month) {
      case 1:
        nameOfMonth = abbr ? 'Jan' : 'January';
        break;
      case 2:
        nameOfMonth = abbr ? 'Feb' : 'February';
        break;
      case 3:
        nameOfMonth = abbr ? 'Mar' : 'March';
        break;
      case 4:
        nameOfMonth = abbr ? 'Apr' : 'April';
        break;
      case 5:
        nameOfMonth = 'May';
        break;
      case 6:
        nameOfMonth = abbr ? 'Jun' : 'June';
        break;
      case 7:
        nameOfMonth = abbr ? 'Jul' : 'July';
        break;
      case 8:
        nameOfMonth = abbr ? 'Aug' : 'August';
        break;
      case 9:
        nameOfMonth = abbr ? 'Sep' : 'September';
        break;
      case 10:
        nameOfMonth = abbr ? 'Oct' : 'October';
        break;
      case 11:
        nameOfMonth = abbr ? 'Nov' : 'November';
        break;
      case 12:
        nameOfMonth = abbr ? 'Dec' : 'December';
        break;
    }

    return nameOfMonth;
  }

  /// Returns the day of the year starting from 0.
  static int _dayOfYear(DateTime dateTime) {
    var dayOfYear = dateTime.day;

    final month = dateTime.month;
    final year = dateTime.year;

    for (var i = 1; i < month; i++) {
      dayOfYear += _daysInMonth(i, year);
    }

    return dayOfYear;
  }

  /// Returns the number of days in [month].
  static int _daysInMonth(int month, int year) {
    assert(month >= 1 && month <= 12);

    late int days;

    switch (month) {
      case 1:
        days = 31;
        break;
      case 2:
        days = _isLeapYear(year) ? 29 : 28;
        break;
      case 3:
        days = 31;
        break;
      case 4:
        days = 30;
        break;
      case 5:
        days = 31;
        break;
      case 6:
        days = 30;
        break;
      case 7:
        days = 31;
        break;
      case 8:
        days = 31;
        break;
      case 9:
        days = 30;
        break;
      case 10:
        days = 31;
        break;
      case 11:
        days = 30;
        break;
      case 12:
        days = 31;
        break;
    }

    return days;
  }

  /// Returns `true` if [year] is a leap year, otherwise returns `false`.
  static bool _isLeapYear(int year) =>
      year % 100 == 0 ? year % 400 == 0 : year % 4 == 0;

  /// Returns the suffix (`st`, `nd`, `rd`, or `th`) of [day].
  static String _suffixOfDay(int day) {
    if (day == 1 || day == 21 || day == 31) {
      return 'st';
    } else if (day == 2 || day == 22) {
      return 'nd';
    } else if (day == 3 || day == 23) {
      return 'rd';
    }

    return 'th';
  }

  /// Returns the difference to Greenwich Time (GMT) in hours.
  ///
  /// If [colon] is `true`, a colon (`:`) will be included between the hours
  /// and minutes of the offset.
  static String _timeZoneOffset(Duration offset, [bool colon = false]) {
    final hours = offset.inHours;
    final minutes = offset.inMinutes.abs() - (hours.abs() * 60);

    return '${hours.isNegative ? '-' : '+'}'
        '${hours.abs().toString().padLeft(2, '0')}'
        '${colon ? ':' : ''}'
        '${minutes.toString().padLeft(2, '0')}';
  }

  /// Attempts to parse [dateTime.timeZoneName] and returns the corresponding
  /// abbreviation if one can be identified, otherwise returns a UTC offset.
  static String _timeZoneAbbreviation(DateTime dateTime) {
    if (dateTime.timeZoneOffset.inSeconds == 0) {
      return 'GMT';
    }

    var timeZoneName = dateTime.timeZoneName;

    if (timeZoneName.startsWith('UTC')) {
      if (RegExp(r'[+-][0-9]{2}')
          .hasMatch(timeZoneName.substring(timeZoneName.length - 3))) {
        timeZoneName += '00';
      }

      return timeZoneName;
    }

    if (timeZoneName.length < 6 &&
        RegExp('[A-Z]{${timeZoneName.length}}').hasMatch(timeZoneName)) {
      return dateTime.timeZoneName;
    }

    String? timeZoneAbbreviation;

    for (var timeZoneId in TimeZones.identifiers.keys) {
      if (timeZoneId == timeZoneName) {
        timeZoneAbbreviation = TimeZones.identifiers[timeZoneId]!;
        break;
      }
    }

    timeZoneAbbreviation ??= 'UTC${_timeZoneOffset(dateTime.timeZoneOffset)}';

    return timeZoneAbbreviation;
  }
}
