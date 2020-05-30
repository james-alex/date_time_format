# date_time_format

[![pub package](https://img.shields.io/pub/v/date_time_format.svg)](https://pub.dartlang.org/packages/date_time_format)
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)

A utility class for formatting Dart's DateTime object using
standard date/time notation or as a relative time offset.

__Updating to v1.0.0:__ The names and locations of many of the original
constants have been changed follow more consistent naming conventions and
to be more organized. See the bottom of this README for notes on the updated
constants if you were using any of those affected.

# Usage

```dart
import 'package:date_time_format/date_time_format.dart';
```

date_time_format exposes a utility class, [DateTimeFormat] that contains
two methods: [format] and [relative], that format [DateTime] objects as defined
by standard date/time notation or as relative to the current or a provided
[DateTime], respectively.

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

[DateTimeFormat.format] defaults to the ISO8601 date/time format.

```dart
final dateTime = DateTime.now();

// 2019-10-15T19:42:05-08:00
print(DateTimeFormat.format(dateTime));

// October 15, 2019 7:42 pm
print(DateTimeFormat.format(dateTime, format: DateTimeFormats.american));

// 15/Oct/2019:19:42:05 -0700
print(DateTimeFormat.format(dateTime, format: DateTimeFormats.commonLogFormat));

// Tuesday, October 15, 2019
print(DateTimeFormat.format(dateTime, format: AmericanDateFormats.dayOfWeek));

// Tue, Oct 15, 19:42
print(DateTimeFormat.format(dateTime, format: 'D, M j, H:i'));
```

## Relative Formatting

By default, [DateTimeFormat.relative] returns the time offset rounded to the nearest
whole unit of time.

__Note:__ Weeks can be excluded as an interval of time by setting the
[excludeWeeks] parameter to `true`, and will not be counted as a degree
of time in regards to [levelOfPrecision].

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

[DateTimeFormat.relative] has a number of parameters, but by default returns
the difference between a provided [DateTime] and [DateTime.now()] in a single
interval of time (seconds, minutes, hours, days, weeks, months, years) rounded
to the nearest whole interval.

__Note:__ The returned intervals of time can be abbreviated by setting the
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
print(DateTimeFormat.relative(timeOffset1);

// 10 minutes
print(DateTimeFormat.relative(timeOffset1, relativeTo: timeOffset2));
```

The [levelOfPrecision] parameter sets the degrees of removal from the largest
interval counted that will be included in the count. I.e. minutes are `1`
degree removed from hours, and seconds are `2` degrees removed from hours but
only `1` degree removed from minutes.

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

[prependIfBefore] and [appendIfAfter] can be used to conveniently prepend and/or append a
[String] before or after the returned relative time offset if the formatted [DateTime] occurs
before or after [relativeTo] (which defaults to `DateTime.now()`), respectively.

```dart
// In 5 days
print(DateTimeFormat.relative(dateTime.subtract(Duration(days: 5)),
    prependIfBefore: 'In', appendIfAfter: 'ago'));

// 5 days ago
print(DateTimeFormat.relative(dateTime.add(Duration(days: 5)),
    prependIfBefore: 'In', appendIfAfter: 'ago'));
```

The [ifNow] parameter can be set to return a value if there is no measurable difference
within the constrained range of units of time. If left `null`, an empty string will be
returned instead.

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

# Updated Constants for v1.0.0

The following constants have been moved and/or renamed to names/locations
shown to their right.

`DateTimeFormats.americanAbbr24Hour` => `AmericanDateTimeFormats.abbr24HourWithComma`

`DateTimeFormats.americanAbbrDate` => `AmericanDateFormats.abbr`

`DateTimeFormats.americanAbbrDateAbbr` => `AmericanDateFormats.abbrAbbr`

`DateTimeFormats.americanAbbrExtended24Hour` => `AmericanDateTimeFormats.abbr24HourExtendedWithComma`

`DateTimeFormats.americanDate` => `AmericanDateFormats.standard`

`DateTimeFormats.americanDateAbbr` => `AmericanDateFormats.standardAbbr`

`DateTimeFormats.americanDayOfWeekAbbr` => `AmericanDateTimeFormats.abbrDayOfWeekWithComma`

`DateTimeFormats.americanDayOfWeekAbbr24Hour` => `AmericanDateTimeFormats.abbrDayOfWeek24HourWithComma`

`DateTimeFormats.americanExtended24Hour` => `DateTimeFormats.american24HourExtended`

`DateTimeFormats.dayOfWeek` => `AmericanDateFormats.dayOfWeekWithComma`

`DateTimeFormats.dayOfWeek12Hour` => `AmericanDateTimeFormats.dayOfWeekWithComma`

`DateTimeFormats.dayOfWeek12HourExtended` => `AmericanDateTimeFormats.dayOfWeekExtendedWithComma`

`DateTimeFormats.dayOfWeek24Hour` => `AmericanDateTimeFormats.dayOfWeek24HourWithComma`

`DateTimeFormats.dayOfWeek24HourExtended` => `AmericanDateTimeFormats.dayOfWeek24HourExtendedWithComma`

`DateTimeFormats.dayOfWeekAbbr` => `AmericanDateFormats.abbrDayOfWeekAbbrWithComma`

`DateTimeFormats.dayOfWeekAbbr12Hour` => `AmericanDateTimeFormats.abbrDayOfWeekAbbrWithComma`

`DateTimeFormats.dayOfWeekAbbr12HourExtended` => `AmericanDateTimeFormats.abbrDayOfWeekAbbrExtendedWithComma`

`DateTimeFormats.dayOfWeekAbbr24Hour` => `AmericanDateTimeFormats.abbrDayOfWeekAbbr24HourWithComma`

`DateTimeFormats.dayOfWeekAbbr24HourExtended` => `AmericanDateTimeFormats.abbrDayOfWeekAbbr24HourExtendedWithComma`

`DateTimeFormats.dayOfWeekAbbrShort` => `AmericanDateFormats.abbrDayOfWeekAbbrShortWithComma`

`DateTimeFormats.dayOfWeekAbbrShort12Hour` => `AmericanDateTimeFormats.abbrDayOfWeekAbbrShortWithComma`

`DateTimeFormats.dayOfWeekAbbrShort24Hour` => `AmericanDateTimeFormats.abbrDayOfWeekAbbrShort24HourWithComma`

`DateTimeFormats.dayOfWeekShort` => `AmericanDateFormats.dayOfWeekShortWithComma`

`DateTimeFormats.european12Hour` => `EuropeanDateTimeFormats.standard12Hour`

`DateTimeFormats.european12HourExtended` => `EuropeanDateTimeFormats.extended12Hour`

`DateTimeFormats.european24Hour` => `EuropeanDateTimeFormats.standard`

`DateTimeFormats.european24HourExtended` => `EuropeanDateTimeFormats.extended`

`DateTimeFormats.europeanAbbr12Hour` => `EuropeanDateTimeFormats.abbr12Hour`

`DateTimeFormats.europeanAbbr12HourExtended` => `EuropeanDateTimeFormats.abbr12HourExtended`

`DateTimeFormats.europeanAbbr24Hour` => `EuropeanDateTimeFormats.abbr`

`DateTimeFormats.europeanAbbr24HourExtended` => `EuropeanDateTimeFormats.abbrExtended`

`DateTimeFormats.europeanDateAbbr` => `EuropeanDateFormats.abbrAbbr`

`DateTimeFormats.time12Hour` => `TimeFormats.standard`

`DateTimeFormats.time12HourExtended` => `TimeFormats.withSeconds`

`DateTimeFormats.time24Hour` => `TimeFormats.standard24Hour`

`DateTimeFormats.time24HourExtended` => `TimeFormats.withSeconds24Hour`
