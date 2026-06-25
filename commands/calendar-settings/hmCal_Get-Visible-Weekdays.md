[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Get Visible Weekdays

`hmCal_Get Visible Weekdays(area) -> weekdays`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| weekdays | Longint | <- | number of weekdays |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Visible Weekdays*** returns the number of visible weekday columns of the calendar in the month view.

<a id="nummer_00002"></a>

## Example

The following example returns the number of visible weekday columns defined by the command [hmCal_SET VISIBLE WEEKDAYS](hmCal_SET-VISIBLE-WEEKDAYS.md)]:

```4d
C_LONGINT($vl_columns)

$vl_columns:=hmCal_Get Visible Weekdays(hmCal)
```
