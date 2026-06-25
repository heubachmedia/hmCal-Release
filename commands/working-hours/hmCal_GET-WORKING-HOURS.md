[Working Hours](../../guides/category-pages/working-hours.md)

# hmCal_GET WORKING HOURS

`hmCal_GET WORKING HOURS(area;timeFrom;timeTill)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| timeFrom | Longint | <- | working time from |
| timeTill | Longint | <- | working time till |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET WORKING HOURS*** returns the currents working hours of the calendar.

<a id="nummer_00002"></a>

## Example

The following example returns the current working hours:

```4d
C_LONGINT($vl_time1;$vl_time2)

$vl_time1:=0
$vl_time2:=0

hmCal_GET WORKING HOURS(hmCal;$vl_time1;$vl_time2)
```
