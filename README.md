# date_time_format

[![pub package](https://img.shields.io/pub/v/date_time_format.svg)](https://pub.dartlang.org/packages/date_time_format)
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)

A utility class for formatting DateTimes.

# Usage

date_time_format contains 2 classes: [DateTimeFormat], a utility class with a
single method, [format], which takes a [DateTime] object and returns a human
readable [String] representation of the date/time stamp. And, [DateTimeFormats]
which contains constants representing commonly used date/time formats.

```dart
final dateTime = DateTime.now();

// [DateTimeFormat.format] defaults to the ISO8601 date/time format.
print(DateTimeFormat.format(dateTime));
// 2019-10-15T19:42:05-08:00

print(DateTimeFormat.format(dateTime, format: DateTimeFormats.american));
// October 15, 2019 7:42 pm

print(DateTimeFormat.format(dateTime, format: DateTimeFormats.commonLogFormat));
// 15/Oct/2019:19:42:05 -0700

print(DateTimeFormat.format(dateTime, format: DateTimeFormats.dayOfWeek));
// Tuesday, October 15, 2019

print(DateTimeFormat.format(dateTime, format: 'D, M j, H:i'));
// Tue, Oct 15, 19:42
```

[DateTimeFormat.format]'s `format` parameter supports the following standard
date/time formatting notations:

`d` : Day of month (01 to 31)

`j` : Day of month, without leading 0s (1 to 31)

`D` : An abbreviated textual representation of a day (Mon through Sun)

`l` : A textual representation of a day (Monday through Sunday)

`S` : Suffix of a day

`z` : The day of the year (starting from 0)

`F` : A textual representation of a month (January through December)

`M` : An abbreviated textual representation of a month (Jan through Dec)

`m` : Numeric representation of a month (01 to 12)

`n` : Numeric representation of a month, without leading 0s (1 to 12)

`Y` : Full numeric representation of a year (e.g. 2019)

`y` : A two digit representation of a year (e.g. 19)

`a` : Ante meridiem and post meridiem, lowercase (am or pm)

`A` : Ante meridiem and post meridiem, uppercase (AM or PM)

`g` : 12-hour format of an hour, without leading 0s (1 through 12)

`h` : 12-hour format of an hour (01 through 12)

`G` : 24-hour format of an hour, without leading 0s (0 through 23)

`H` : 24-hour format of an hour (00 through 23)

`i` : Minutes

`s` : Seconds

`v` : Milliseconds (0 - 999)

`u` : Microseconds (0 - 999)

`e` : Timezone identifier (Returns [DateTime.timeZoneName], which is
provided by the operating system and may be a name or abbreviation.)

`O` : Difference to Greenwich Time (GMT) in hours

`P` : Difference to Greenwich Time (GMT) in hours with a colon

`T` : Timezone abbreviation (Identifies the Timezone from
[DateTime.timeZoneName].)

`c` : ISO 8601 date (e.g. 2019-10-15T19:42:05-08:00)

`r` : RFC 2822 date (Tue, 15 Oct 2019 17:42:05 -0800)

`U` : Seconds since Unix Epoch

`\` : Escape character
