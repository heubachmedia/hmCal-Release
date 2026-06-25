[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET VISIBLE DAYS

`hmCal_SET VISIBLE DAYS(area;days)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| days | Real | -> | number of days |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET VISIBLE DAYS*** sets the number of visible days of the calendar. The setting is only available in the multi day view and user multi day view.

Pass *0* in the parameter *days* if you want to show all days.

<a id="nummer_00002"></a>

## Example

The following example shows 30 days and displays 2 days, so that the user have to scroll:

```4d
hmCal_SET DAY RANGE(hmCal;30)
hmCal_SET VISIBLE DAYS(hmCal;2)
```
