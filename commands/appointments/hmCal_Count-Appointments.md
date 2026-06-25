[Appointments](../../guides/category-pages/appointments.md)

# hmCal_Count Appointments

`hmCal_Count Appointments(area) -> count`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| count | Longint | <- | sum of all appointments |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Count Appointments*** returns the count of all appointments.

<a id="nummer_00002"></a>

## Example

The following example returns the count of all appointments of the calendar:

```4d
C_LONGINT($vl_count)

$vl_count:=hmCal_Count Appointments(hmCal)
```
