[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET START TIME

`hmCal_SET START TIME(area;time)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| time | Longint | -> | new time |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET START TIME*** scrolls to the time, definied by the parameter *time*. The time will be displayed on the top of the calendar, if possible.

<a id="nummer_00002"></a>

## Example

The following example shows the calender between 10am and 6pm:

```4d
hmCal_SET VISIBLE HOURS (hmCal;8)
hmCal_SET START TIME (hmCal;?10:00:00?+0)
```
