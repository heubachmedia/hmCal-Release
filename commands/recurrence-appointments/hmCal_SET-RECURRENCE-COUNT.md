[Recurrence Appointments](../../guides/category-pages/recurrence-appointments.md)

# hmCal_SET RECURRENCE COUNT

`hmCal_SET RECURRENCE COUNT (area;reference;count)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | appointment reference |
| count | Longint | -> | occurrence |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET RECURRENCE COUNT*** sets the occurrence count of the appointment. Standard is *1*. The count includes the origin (parent) appointment. All values less *1* are ignored.
