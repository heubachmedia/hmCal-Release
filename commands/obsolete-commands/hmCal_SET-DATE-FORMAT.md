[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_SET DATE FORMAT

`hmCal_SET DATE FORMAT(area;format)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| format | Text | -> | Date format |

*Notice: This command is obsolete in version 2.2. Please use

[hmCal_SET FORMAT](../calendar-settings/hmCal_SET-FORMAT.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET DATE FORMAT*** sets the current date format.

Contrary to the command [hmCal_SET DATE 4D FORMAT](../calendar-settings/hmCal_SET-DATE-4D-FORMAT.md) you can define your own date formats define.

Is the parameter *format* an empty string, the standard date format is used or the date format defined by the command [hmCal_SET DATE 4D FORMAT](../calendar-settings/hmCal_SET-DATE-4D-FORMAT.md).

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
%Y Year                                               2007
%% A % sign                                           %
```

<a id="nummer_00002"></a>

## Example

The following example sets the date format to *Jan 1, 2007*:

```4d
hmCal_SET DATE FORMAT(hmCal;"%b %d, %Y")
```
