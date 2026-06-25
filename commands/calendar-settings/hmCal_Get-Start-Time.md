[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Get Start Time

`hmCal_Get Start Time(area) -> time`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| time | Longint | <- | shown time |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Start Time*** returns the time, which is shown on the top of the day views and multi day view of the calendar. So you can get the time span which is shown in the current view of the calendar.

<a id="nummer_00002"></a>

## Example

The following example returns the time of the top of the calendar:

```4d
C_TIME($vu_time)

$vu_time:=?00:00:00?+hmCal_Get Start Time(hmCal)
```
