[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET FORMAT

`hmCal_SET FORMAT(area;type;format)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| type | Longint | -> | Formattype |
| format | Text | -> | Format |

## Contents

- [1 Description](#nummer_00001)
- [2 Format](#nummer_00002)
- [3 Example](#nummer_00003)

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET FORMAT*** sets a format for a specific type. Pass a valid value (see below the types-table) in the parameter *type*. In the parameter *Format* you must pass a format. You can use placeholders for this purpose (see the placeholder table below).

Contrary to the commands [hmCal_SET DATE 4D FORMAT](hmCal_SET-DATE-4D-FORMAT.md) and [hmCal_SET TIME 4D FORMAT](hmCal_SET-TIME-4D-FORMAT.md) you can define your own date formats. Is the parameter *format* an empty string, the standard date format is used or the date format defined by the commands [hmCal_SET DATE 4D FORMAT](hmCal_SET-DATE-4D-FORMAT.md) and [hmCal_SET TIME 4D FORMAT](hmCal_SET-TIME-4D-FORMAT.md).

The following formattypes are available:

- 1 = Dateformat
- 2 = Timeformat
- 3 = Hour format in the project view
- 4 = Week format in the project view
- 5 = Week format in the project view (in monthly header)
- 6 = Month format in the project view
- 7 = Month format in the project view (in quarter header)
- 8 = Quarter format in the project view
- 9 = Quarter format in the project view (in yearly header)
- 10 = Year format in the project view
- 11 = Weeknumber format in the month view
- 12 = Format of the timeline (months) in the year view
- 13 = Timeline format
- 14 = Timeline format of the minutes if area property *hmCal_prop_TimelineFullHours* is on
- 15 = Date format of the date in the top left corner of the multi day view

<a id="nummer_00002"></a>

## Format

In the format text you can use the following placeholders:

```
   Description                                        Example
%a Abbreviated weekday name                           Thu
%A Full weekday name                                  Thursday
%b Abbreviated month name                             Aug
%B Full month name                                    August
%c Abbreviated weekday name, two characters           Th
%d Day of the month                                   23
%H Hours in 24h format (0-23)                         7
%I Hours in 12h format (1-12)                         7
%m Month as a decimal number                          8
%M Minutes as a decimal number (00-59)                36
%n Day of month with leading zero                     01
%N Month as a decimal number with leading zero        08
%p AM or PM designation                               AM
%q Quarter                                            2
%S Seconds as a decimal number (00-59)                48
%W Week number                                        28
%y Year, last two digits (00-99)                      07
%Y Year                                               2015
%% A % sign                                           %
```

<a id="nummer_00003"></a>

## Example

The following example sets the date format to *Jan 1, 2015*:

```4d
hmCal_SET FORMAT(hmCal;1;"%b %d, %Y")
```
