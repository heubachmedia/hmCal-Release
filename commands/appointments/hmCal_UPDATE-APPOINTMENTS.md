[Appointments](../../guides/category-pages/appointments.md)

# hmCal_UPDATE APPOINTMENTS

`hmCal_UPDATE APPOINTMENTS(area)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_UPDATE APPOINTMENTS*** causes an update of all appointments dependent on the current time range. The command releases the callback event *hmCal_UpdateAppointments*.

You use the command only very rarely, cause hmCal update all appointments if necessary.

For example, you can use the command, if you create an appointment outside of another process. Then you can update the appointments with the help of *On Outside Call*.

If you call this command, hmCal deletes all appointments, relations and appointment groups internally. You *have to* create all appointments again.

<a id="nummer_00002"></a>

## Example

The following example updates all appointments:

```4d
hmCal_UPDATE APPOINTMENTS(hmCal)
```
