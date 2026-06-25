[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET START DATE

`hmCal_SET START DATE(area;startdate)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| startdate | Date | -> | new startday |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET START DATE*** sets the calendar to the starting date, defined by the parameter *startdate*. Depending upon the view, the calendar is redrawn again, so that the startdate is shown. The command causes an immediate redraw of the area, whereby the callback method routine releases the *hmCal_UpdateAppointments* event.

The command has an effect only if the starting date deviates from the new starting date.

<a id="nummer_00002"></a>

## Example

The following example indicates the current date in the current view.

```4d
hmCal_SET START DATE(hmCal;Current Date)
```
