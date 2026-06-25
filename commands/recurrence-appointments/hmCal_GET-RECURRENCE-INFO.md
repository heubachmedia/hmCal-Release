[Recurrence Appointments](../../guides/category-pages/recurrence-appointments.md)

# hmCal_GET RECURRENCE INFO

`hmCal_GET RECURRENCE INFO (area ;reference;number;fromDate;fromTime;toDate;toTime;inExlist)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | appointment reference |
| number | Longint | -> | number of recurrence |
| fromDate | Date | <- | from date |
| fromTime | Longint | <- | from time |
| toDate | Date | <- | to date |
| toTime | Longint | <- | to time |
| inExlist | Longint | <- | Is in exdate list |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET RECURRENCE INFO*** returns information about the n-th recurrence, defined by the parameter *number*, of a recurrence appointment.

The parameter *inExlist* resturns *1* if the recurrence number of an appointment is in the exdatelist. In that case, the parameters *fromDate*, *fromTime*, *toDate* and *toTime* returns zero values. If the recurrence number is beyond the recurrence period, the parameter *inExlist* returns *0* and all other parameter returns zero values. You can loop through all recurrences of an appointment regarding the exdatelist.
