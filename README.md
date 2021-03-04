# date_time_format

[![pub package](https://img.shields.io/pub/v/date_time_format.svg)](https://pub.dartlang.org/packages/date_time_format)

A utility class, and extension methods, for formatting Dart's [DateTime]
object using standard date/time notation or as a relative time offset.

# Usage

```dart
import 'package:date_time_format/date_time_format.dart';
```

date_time_format exposes 2 utility methods, [format] and [relative], that
are added to the [DateTime] class as extension methods or can be accessed
via the [DateTimeFormat] utility class.

[format] and [relative] format [DateTime] objects as defined by standard
date/time notation or as relative to the current or a provided [DateTime],
respectively.

See the `Date/Time Notations` section below for a complete list of supported
formatting notations.

In addition to the formatting utilities, a variety of date/time notation
formatting constants are pre-defined in the following classes: [DateTimeFormats](https://pub.dev/documentation/date_time_format/latest/date_time_format/DateTimeFormats-class.html)
contains standard date/time formatting notations. [DateFormats](https://pub.dev/documentation/date_time_format/latest/date_time_format/DateFormats-class.html)
and [TimeFormats](https://pub.dev/documentation/date_time_format/latest/date_time_format/DateFormats-class.html) contain common date-only and time-only
formatting constants, respectively. Additional American and European date/time
formatting constants can be found in the [AmericanDateFormats](https://pub.dev/documentation/date_time_format/latest/date_time_format/AmericanDateFormats-class.html),
[AmericanDateTimeFormats](https://pub.dev/documentation/date_time_format/latest/date_time_format/AmericanDateTimeFormats-class.html), [EuropeanDateFormats](https://pub.dev/documentation/date_time_format/latest/date_time_format/EuropeanDateFormats-class.html), and [EuropeanDateTimeFormats](https://pub.dev/documentation/date_time_format/latest/date_time_format/EuropeanDateFormats-class.html) classes.

## Standard Formatting

__Note:__ Each example below shows the extension method being utilized, and
the utility method being used on the next line. Both methods will return the
same output.

```dart
final dateTime = DateTime.now();

// 2019-10-15T19:42:05-08:00
print(dateTime.format());
print(DateTimeFormat.format(dateTime));

// October 15, 2019 7:42 pm
print(dateTime.format(DateTimeFormats.american));
print(DateTimeFormat.format(dateTime, format: DateTimeFormats.american));

// 15/Oct/2019:19:42:05 -0700
print(dateTime.format(DateTimeFormats.commonLogFormat));
print(DateTimeFormat.format(dateTime, format: DateTimeFormats.commonLogFormat));

// Tuesday, October 15, 2019
print(dateTime.format(AmericanDateFormats.dayOfWeek));
print(DateTimeFormat.format(dateTime, format: AmericanDateFormats.dayOfWeek));

// Tue, Oct 15, 19:42
print(dateTime.format('D, M j, H:i'));
print(DateTimeFormat.format(dateTime, format: 'D, M j, H:i'));
```

## Relative Formatting

By default, [DateTimeFormat.relative] returns the time offset rounded to the nearest
whole unit of time.

```dart
// 5 minutes
print(DateTimeFormat.relative(dateTime.subtract(Duration(minutes: 5))));

// 3 hours
print(DateTimeFormat.relative(dateTime.subtract(Duration(hours: 2, minutes: 30))));

// 5 days
print(DateTimeFormat.relative(dateTime.subtract(Duration(days: 5, hours: 10))));

// 1 week
print(DateTimeFormat.relative(dateTime.subtract(Duration(days: 9))));

// 9 days
print(DateTimeFormat.relative(dateTime.subtract(Duration(days: 9)),
    excludeWeeks: true));
```

[relative] can also be called as an extension method on [DateTime].

```dart
final dateTime = DateTime.now().subtract(Duration(minutes: 5));

// 5 minutes
print(dateTime.relative());

// 5 minutes ago
print(dateTime.relative(appendIfAfter: 'ago'));

// 5 minutes
print(dateTime.relative(to: DateTime.now().subtract(Duration(minutes: 10))));

// In 5 minutes
print(dateTime.relative(
    to: DateTime.now().subtract(Duration(minutes: 10)),
    prependIfBefore: 'In'));
```

All of the parameters detailed on the [DateTimeFormat.relative] are also
provided on the [DateTime.relative] extension method.

### __Abbreviating:__

The returned intervals of time can be abbreviated by setting the
[abbr] parameter to `true`.

```dart
final timeOffset = dateTime.subtract(Duration(minutes: 5));

// 5 minutes
print(DateTimeFormat.relative(timeOffset));

// 5m
print(DateTimeFormat.relative(timeOffset, abbr: true));
```

To compare the provided [DateTime] to another [DateTime] object, the [relativeTo]
parameter can be set.

```dart
final timeOffset1 = dateTime.subtract(Duration(minutes: 5));
final timeOffset2 = dateTime.add(Duration(minutes: 5));

// 5 minutes
print(DateTimeFormat.relative(timeOffset1));

// 10 minutes
print(DateTimeFormat.relative(timeOffset1, relativeTo: timeOffset2));
```

### __Level of Precision:__

The [levelOfPrecision] parameter sets the degrees of removal from the largest
interval counted that will be included in the count. I.e. minutes are `1`
degree removed from hours, and seconds are `2` degrees removed from hours but
only `1` degree removed from minutes.

__Note:__ Weeks can be excluded as an interval of time by setting the
[excludeWeeks] parameter to `true`, and will not be counted as a degree
of time in regards to [levelOfPrecision].

```dart
final timeOffset = dateTime.add(Duration(days: 3, hours: 6, minutes: 30, seconds: 15));

// 3 days
print(DateTimeFormat.relative(timeOffset));

// 3 days 7 hours
print(DateTimeFormat.relative(timeOffset, levelOfPrecision: 1));

// 3 days 6 hours 30 minutes
print(DateTimeFormat.relative(timeOffset, levelOfPrecision: 2));

// 3 days 6 hours 30 minutes 15 seconds
print(DateTimeFormat.relative(timeOffset, levelOfPrecision: 3));
```

### __Minimum & Maximum Units of Time:__

The minimum and maximum intervals to include in the count can be specified by
the [minUnitOfTime] and [maxUnitOfTime] respectively. The largest possible
interval of time being a year, and the smallest being a microsecond.

By default, the smallest unit of time returned is a second, to include milliseconds
or microseconds the [minUnitOfTime] parameter must be set to [UnitOfTime.milliseconds]/
[UnitOfTime.microseconds]. __Note:__ Milliseconds and microseconds may be returned slightly
off from the expected values if the function takes longer to process than those intervals
of time.

```dart
final timeOffset = dateTime.add(Duration(
    days: 762, hours: 6, minutes: 30, seconds: 15, milliseconds: 300, microseconds: 740));

// 2 years 1 month 2 days
print(DateTimeFormat.relative(timeOffset, levelOfPrecision: 3));

// 25 months 5 days 7 hours
print(DateTimeFormat.relative(timeOffset, levelOfPrecision: 3,
    maxUnitOfTime: UnitOfTime.month));

// 762 days 6 hours 30 minutes 15 seconds
print(DateTimeFormat.relative(timeOffset, levelOfPrecision: 3,
    maxUnitOfTime: UnitOfTime.day));

// 2 years 1 month 2 days 6 hours 30 minutes 15 seconds
print(DateTimeFormat.relative(timeOffset, levelOfPrecision: 8));

// 2 years 1 month 2 days 6 hours 30 minutes 15 seconds 301 milliseconds
print(DateTimeFormat.relative(timeOffset, levelOfPrecision: 8,
    minUnitOfTime: UnitOfTime.millisecond));

// 2 years 1 month 2 days 6 hours 30 minutes 15 seconds 300 milliseconds 740 microseconds
print(DateTimeFormat.relative(timeOffset, levelOfPrecision: 8,
    minUnitOfTime: UnitOfTime.microsecond));

// 2y 1m 2d 6h 30m 15s 300ms 740mu
print(DateTimeFormat.relative(timeOffset, levelOfPrecision: 8,
    minUnitOfTime: UnitOfTime.microsecond, abbr: true));
```

### __Rounding:__

Rounding, which is enabled by default, can be disabled by setting the [round]
parameter to `false`, in which case any measure of time that isn't included
in the smallest returned interval will be truncated.

```dart
final timeOffset = dateTime.subtract(Duration(hours: 6, minutes: 45));

// 7 hours
print(DateTimeFormat.relative(timeOffset));

// 6 hours
print(DateTimeFormat.relative(timeOffset, round: false));
```

### __Formatting After X Amount of Time:__

[formatAfter] can be set to a [Duration] of time to return a standard formatted
date/time stamp, via the [DateTimeFormat.format] method, if the difference in
time is greater than the duration specified.

By default, date/time stamps will be formatted to the [AmericanDateTimeStamp.abbrWithComma]
constant. A different formatting notation can be provided via the [format] parameter.

```dart
final timeOffset = dateTime.subtract(Duration(days: 762, hours: 6, minutes: 30));

// 2 years
print(DateTimeFormat.relative(timeOffset));

// Apr 29, 2018 6:27 am
print(DateTimeFormat.relative(timeOffset, formatAfter: Duration(days: 365)));

// 6:27 am · Apr 29, 2018
print(DateTimeFormat.relative(timeOffset, formatAfter: Duration(days: 365),
    format: r'g:i a · M j, Y'));
```

### __Prepending & Appending Text:__

[prependIfBefore] and [appendIfAfter] can be used to conveniently prepend and/or append a
[String] before or after the returned relative time offset if the formatted [DateTime] occurs
before or after [relativeTo] (which defaults to `DateTime.now()`), respectively.

```dart
// 5 days ago
print(DateTimeFormat.relative(dateTime.subtract(Duration(days: 5)),
    prependIfBefore: 'In', appendIfAfter: 'ago'));

// In 5 days
print(DateTimeFormat.relative(dateTime.add(Duration(days: 5)),
    prependIfBefore: 'In', appendIfAfter: 'ago'));
```

### __Return X Below Minimum Unit of Time:__

The [ifNow] parameter can be set to return a value if the difference in time is less
than [minUnitOfTime], otherwise, an empty string will be returned.

```dart
// Now
print(DateTimeFormat.relative(DateTime.now(), ifNow: 'Now'));

// 5 minutes
print(DateTimeFormat.relative(dateTime.subtract(Duration(minutes: 5)), ifNow: 'Now'));

// Now
print(DateTimeFormat.relative(dateTime.subtract(Duration(minutes: 5)), ifNow: 'Now',
    minUnitOfTime: UnitOfTime.hour));
```

# Date/Time Notations

[DateTimeFormat.format] and [DateTime.relative]'s `format` parameter supports
the following standard date/time formatting notations:

`d` : Day of month (01 - 31)

`j` : Day of month, without leading 0s (1 - 31)

`D` : An abbreviated textual representation of a day (Mon - Sun)

`l` : A textual representation of a day (Monday - Sunday)

`S` : Suffix of a day (st, th, nd)

`z` : The day of the year (starting from 0)

`F` : A textual representation of a month (January - December)

`M` : An abbreviated textual representation of a month (Jan - Dec)

`m` : Numeric representation of a month (01 - 12)

`n` : Numeric representation of a month, without leading 0s (1 - 12)

`Y` : Full numeric representation of a year (e.g. 2019)

`y` : A two digit representation of a year (e.g. 19)

`a` : Ante meridiem and post meridiem, lowercase (am or pm)

`A` : Ante meridiem and post meridiem, uppercase (AM or PM)

`g` : 12-hour format of an hour, without leading 0s (1 - 12)

`h` : 12-hour format of an hour (01 - 12)

`G` : 24-hour format of an hour, without leading 0s (0 - 23)

`H` : 24-hour format of an hour (00 - 23)

`i` : Minutes (0 - 59)

`s` : Seconds (0 - 59)

`v` : Milliseconds (0 - 999)

`u` : Microseconds (0 - 999)

`e` : Timezone identifier (Returns [DateTime.timeZoneName], which is
provided by the operating system and may be a name or abbreviation.)

`O` : Difference to Greenwich Time (GMT) in hours (±0000)

`P` : Difference to Greenwich Time (GMT) in hours with a colon (±00:00)

`T` : Timezone abbreviation (Identifies the Timezone from
[DateTime.timeZoneName].)

`c` : ISO 8601 date (e.g. 2019-10-15T19:42:05-08:00)

`r` : RFC 2822 date (Tue, 15 Oct 2019 17:42:05 -0800)

`U` : Seconds since Unix Epoch

`\` : Escape character
