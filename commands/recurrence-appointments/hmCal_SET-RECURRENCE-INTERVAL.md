[Recurrence Appointments](../../guides/category-pages/recurrence-appointments.md)

# hmCal_SET RECURRENCE INTERVAL

`hmCal_SET RECURRENCE INTERVAL (area;reference;intervall)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | appointment reference |
| intervall | Longint | -> | recurrence interval |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET RECURRENCE INTERVAL*** repeats an appointment in an intervall, defined by the parameter *intervall*. If you define an intervall greater than *1*, then several days are skipped. Intervalls lower 1 are ignored.
