## [2.0.1] - March 4, 2021

* Added the [abbreviations] parameter to [relative] to allow custom
abbreviations to be provided.

* Changed the default abbreviation for months from `m` to `mo` to
differentiate it from minutes.

* Changed the default abbreviation for microseconds from `mu` to `μs`.

## [2.0.0] - March 3, 2021

* Merge null-safe branch into main branch.

## [2.0.0-nullsafety] - January 13, 2021

* Migrated to null-safe code.

## [1.1.1] - January 12, 2021

* Bug fix regarding the max unit of time shown by a [relative] format.

## [1.1.0] - September 16, 2020

* Added the [format] and [relative] extension methods to [DateTime].

## [1.0.0] - May 30, 2020

* Added significantly more American and European date/time formatting constants,
plus additional date-only and time-only formatting constants.

* Split the pre-defined date/time formatting constants into more classes:
[DateTimeFormats], [DateFormats], [TimeFormats], [AmericanDateFormats],
[AmericanDateTimeFormats], [EuropeanDateFormats], and [EuropeanDateTimeFormats].

* Added the [relative] method to [DateTimeFormat] to return relative time differences.

## [0.1.1+1] - April 26, 2020

* Added additional date/time notation constants to [DateTimeFormats].

## [0.1.1] - April 24, 2020

* Added a list of every date/time notation constant to [DateTimeFormats].

## [0.1.0] - March 11, 2020

* Initial release.
