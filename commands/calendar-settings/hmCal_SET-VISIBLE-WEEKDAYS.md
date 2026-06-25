[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET VISIBLE WEEKDAYS

`hmCal_SET VISIBLE WEEKDAYS(area;weekdays)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| weekdays | Longint | -> | number of weekdays |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET VISIBLE WEEKDAYS*** sets the number of visible weekday in the month view. You can display one or up to all seven weekdays.

<a id="nummer_00002"></a>

## Example

The following example shows the month view from monday to friday:

```4d
hmCal_SET VISIBLE WEEKDAYS(hmCal;5)
```
