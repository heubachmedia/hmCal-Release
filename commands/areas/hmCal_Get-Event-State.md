[Areas](../../guides/category-pages/areas.md)

# hmCal_Get Event State

`hmCal_Get Event State(area;event) -> state`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| event | Longint | -> | event number |
| state | Longint | <- | 1=activated, 0=deactivated |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Event State*** returns if an event is activated or deactivated.

<a id="nummer_00002"></a>

## Example

The following example returns if the event *hmCal_UpdateAppointments* is activated:

```4d
C_BOOLEAN($vf_active)

$vf_active=hmCal_Get Event State(hmCal;hmCal_UpdateAppointments)=1
```
