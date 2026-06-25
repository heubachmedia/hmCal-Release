[Areas](../../guides/category-pages/areas.md)

# hmCal_FILTER EVENT

`hmCal_FILTER EVENT(area;event)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| event | Longint | -> | event number |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_FILTER EVENT*** deactivates an following event after within an event. The filter is only set during a user action (e. g. click).

<a id="nummer_00002"></a>

## Example

If the user clicks in a hmCal area, the following events are fired (if they are active):

- hmCal_ClickAppointment
- hmCal_ClickArea

Now, if you want to filter all following events in the event *hmCal_ClickAppointment*, you only call:

```4d
hmCal_FILTER EVENT(hmCal;hmCal_ClickArea)
```

You can filter more than one event. Just call the command for each event you want to filter.
