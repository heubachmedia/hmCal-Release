[Appointments](../../guides/category-pages/appointments.md)

# hmCal_Find Appointment By ID

`hmCal_Find Appointment By ID(area;reference) -> result`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | appointment id |
| result | Longint | <- | 0=not exists, 1=exists |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Find Appointment By ID*** checks if there is an appointment with a specific reference id.

<a id="nummer_00002"></a>

## Example

The following example checks, if there is an appointment with the id *45*:

```4d
C_LONGINT($vl_result)

$vl_result:=hmCal_Find Appointment By ID(hmCal;45)

If($vl_result=1)
 Alert("Appointment is displayed in the calendar")
Else
 Alert("Appointment is NOT displayed in the calendar")
End if
```
