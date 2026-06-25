[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_SET WEEKDAY NAMES

`hmCal_mini_SET WEEKDAY NAMES(area;weekday names)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal-mini area |
| weekday names | Stringarray | -> | weekday names to set |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_SET WEEKDAY NAMES*** sets all weekday names defined by the array *weekday names*. The array can be a string-array or a text-array.

<a id="nummer_00002"></a>

## Example

The following example sets all weekday names to german:

```4d
ARRAY TEXT($tt_weekdaynames;7)
$tt_weekdaynames{1}:="Montag"
$tt_weekdaynames{2}:="Dienstag"
$tt_weekdaynames{3}:="Mittwoch"
$tt_weekdaynames{4}:="Donnerstag"
$tt_weekdaynames{5}:="Freitag"
$tt_weekdaynames{6}:="Samstag"
$tt_weekdaynames{7}:="Sonntag"

hmCal_mini_SET WEEKDAY NAMES(hmCalmini;$tt_weekdaynames)
```
