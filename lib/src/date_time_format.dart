import './date_time_formats.dart';
import './helpers/timezones.dart';

/// A utility class for formatting [DateTime]s.
class DateTimeFormat {
  DateTimeFormat._();

  /// Formats [dateTime] according to the notation [format].
  ///
  /// [format] accepts the following standard notations:
  ///
  /// `d` : Day of month (01 to 31)
  ///
  /// `j` : Day of month, without leading 0s (1 to 31)
  ///
  /// `D` : An abbreviated textual representation of a day (Mon through Sun)
  ///
  /// `l` : A textual representation of a day (Monday through Sunday)
  ///
  /// `S` : Suffix of a day
  ///
  /// `z` : The day of the year (starting from 0)
  ///
  /// `F` : A textual representation of a month (January through December)
  ///
  /// `M` : An abbreviated textual representation of a month (Jan through Dec)
  ///
  /// `m` : Numeric representation of a month (01 to 12)
  ///
  /// `n` : Numeric representation of a month, without leading 0s (1 to 12)
  ///
  /// `Y` : Full numeric representation of a year (e.g. 2019)
  ///
  /// `y` : A two digit representation of a year (e.g. 19)
  ///
  /// `a` : Ante meridiem and post meridiem, lowercase (am or pm)
  ///
  /// `A` : Ante meridiem and post meridiem, uppercase (AM or PM)
  ///
  /// `g` : 12-hour format of an hour, without leading 0s (1 through 12)
  ///
  /// `h` : 12-hour format of an hour (01 through 12)
  ///
  /// `G` : 24-hour format of an hour, without leading 0s (0 through 23)
  ///
  /// `H` : 24-hour format of an hour (00 through 23)
  ///
  /// `i` : Minutes
  ///
  /// `s` : Seconds
  ///
  /// `v` : Milliseconds (0 - 999)
  ///
  /// `u` : Microseconds (0 - 999)
  ///
  /// `e` : System time zone identifier (Returns [DateTime.timeZoneName], which
  /// is provided by the operating system and may be a name or abbreviation.)
  ///
  /// `O` : Difference to Greenwich Time (GMT) in hours
  ///
  /// `P` : Difference to Greenwich Time (GMT) in hours with a colon
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
    assert(dateTime != null);
    assert(format != null);

    var formattedDateTime = '';

    var nextCharacterIsEscaped = false;

    format.split('').forEach((notation) {
      String value;

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

  /// Returns the name of the day of the week, abbreviated if [abbr] is `true`.
  ///
  /// [dayOfWeek] must be in the range of `1-7`.
  ///
  /// The week starts from Monday.
  static String _dayOfWeek(int dayOfWeek, bool abbr) {
    assert(dayOfWeek != null && dayOfWeek >= 1 && dayOfWeek <= 7);
    assert(abbr != null);

    String nameOfDay;

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
    assert(month != null && month >= 1 && month <= 12);
    assert(abbr != null);

    String nameOfMonth;

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
    assert(dateTime != null);

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
    assert(month != null && month >= 1 && month <= 12);
    assert(year != null);

    int days;

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
  static bool _isLeapYear(int year) {
    assert(year != null);

    return year % 100 == 0 ? year % 400 == 0 : year % 4 == 0;
  }

  /// Returns the suffix (`st`, `nd`, `rd`, or `th`) of [day].
  static String _suffixOfDay(int day) {
    assert(day != null);

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
    assert(offset != null);
    assert(colon != null);

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
    assert(dateTime != null);

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

    String timeZoneAbbreviation;

    for (var timeZoneId in TimeZones.identifiers.keys) {
      if (timeZoneId == timeZoneName) {
        timeZoneAbbreviation = TimeZones.identifiers[timeZoneId];
        break;
      }
    }

    if (timeZoneAbbreviation == null) {
      return 'UTC${_timeZoneOffset(dateTime.timeZoneOffset)}';
    }

    return timeZoneAbbreviation;
  }
}
