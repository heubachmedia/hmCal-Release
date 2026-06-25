[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET VIEW

`hmCal_SET VIEW(area;view)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| view | Longint | -> | hmCal view |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET VIEW*** sets the calendar in the view, defined by parameter *view*. There are 9 views:

- 1 = day view
- 2 = multi day view
- 3 = month view
- 4 = user day view
- 5 = user multi day view
- 6 = project view
- 7 = resources view
- 8 = year view
- 9 = day user view

You can use also the predefinied [Constants](../../guides/appendix/Constants.md).

If the view has changed, the calendar is redrawn. The command causes an immediate redraw of the area, whereby the callback method routine releases the *hmCal_UpdateAppointments* event.

The command has an effect only if the view has changed. If you pass an invalid value of the parameter *view*, the command is ignored.

<a id="nummer_00002"></a>

## Example

The following example indicates the monthly view:

```4d
hmCal_SET VIEW(hmCal;hmCal_MonthView)
```
