[Recurrence Appointments](../../guides/category-pages/recurrence-appointments.md)

# hmCal_Get Recurrence Number

`hmCal_Get Recurrence Number (area) -> number`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| number | Longint | <- | number of recurrence |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Recurrence Number*** returns the current number of a recurrence child appointment. You can only call this command in the [Callback-Method](../areas/hmCal_INSTALL-CALLBACK.md).

In the callback method, you will get only the ID of the parent appointment. With this command you can identify if the appointment is a parent or child (the n-th recurrence) of an appointment. If a *0* is returned, the appointment is the parent appointment. If a value greater than *0* is returned, it's a child appointment with the n-th recurrence.
