[Recurrence Appointments](../../guides/category-pages/recurrence-appointments.md)

# hmCal_Get Recurrence Date

`hmCal_Get Recurrence Date (area;reference) -> date`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | appointment reference |
| date | Date | <- | End date |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Recurrence Date*** returns the end date of a repeated appointment. If an empty date is returned, no end date exists (endless).

Also see: [hmCal_SET RECURRENCE DATE](hmCal_SET-RECURRENCE-DATE.md)
