[Appointments](../../guides/category-pages/appointments.md)

# hmCal_Delete Appointment

`hmCal_Delete Appointment(area;reference) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | appointment id |
| error | Longint | <- | error-code |

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_Delete Appointment*** you can delete an existing appointment created with the command [hmCal_Add Appointment](hmCal_Add-Appointment.md).

You use this command only very rarely, because the callback method releases the event *hmCal_UpdateAppointments*. This event deletes all appointments in the memory, so you have to create all appointments again (see chapter [hmCal_INSTALL CALLBACK](../areas/hmCal_INSTALL-CALLBACK.md)).

<a id="nummer_00002"></a>

## Example

The following example deletes the appointment with the reference *89*:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Delete Appointment(hmCal;89)
```
