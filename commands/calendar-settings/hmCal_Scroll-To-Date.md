[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Scroll To Date

`hmCal_Scroll To Date(area;day) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| day | Longint | -> | destination day |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_Scroll To Date*** you can scroll to a specific day in the week view and in the user week view. If you pass an empty day (!00/00/00!), the area scrolls to the first day in the current view. If the day is outside the current day range, or the current calendar view does not support scrolling to days, an error will be return.

<a id="nummer_00002"></a>

## Example

The following example scrolls in the current view to the current day:

```4d
C_LONGINT($vl_error)

$vl_error=hmCal_Scroll To Date(hmCal;Current Date)
```
