[Areas](../../guides/category-pages/areas.md)

# hmCal_SET EVENT STATE

`hmCal_SET EVENT STATE(area;event;state)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| event | Longint | -> | event number |
| state | Longint | -> | 1=activated, 0=deactivated |

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_SET EVENT STATE*** you can activate and deactivate events. Deactivated events no longer call the callback method but will be internally executed.

All events are activated by default. That means, that the callback method is called with every event.

But because of performance issues there are some events which are **not** activated by default. These are the events:

- *hmCal_TryNewAppointment*
- *hmCal_TryDragAppointment*
- *hmCal_TryResizeAppointment*
- *hmCal_Error*
- *hmCal_Update_RRULE*
- *hmCal_DoubleClickRelation*
- *hmCal_ClickRelation*
- *hmCal_NewRelation*
- *hmCal_DeleteRelation*
- *hmCal_ClickAppCurrent*
- *hmCal_DoubleClickAppCurrent*
- *hmCal_ResizeObject*
- *hmCal_SortAppointment*
- *hmCal_ClickMonthMore*
- *hmCal_DoubleClickMonthMore*
- *hmCal_WhileDragAppointment*
- *hmCal_OnEditMenu*
- *hmCal_CreateNewAppointment*
- *hmCal_OnTooltip*
- *hmCal_OnScroll*
- *hmCal_SortUser*

<a id="nummer_00002"></a>

## Example

The following example deactivates the event *hmCal_UpdateAppointments* and will no longer call the callback method:

```4d
hmCal_SET EVENT STATE(hmCal;hmCal_UpdateAppointments;0)
```
