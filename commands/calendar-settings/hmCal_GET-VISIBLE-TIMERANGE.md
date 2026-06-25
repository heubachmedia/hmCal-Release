[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_GET VISIBLE TIMERANGE

`hmCal_GET VISIBLE TIMERANGE(area;fromDate;fromTime;tillDate;tillTime)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal Bereich |
| fromDate | Datum | <- | from date |
| fromTime | Longint | <- | from time |
| tillDate | Datum | <- | till date |
| tillTime | Longint | <- | till time |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET VISIBLE TIMERANGE*** returns the visible time range of the current view in the parameters *fromDate*, *fromTime*, *tillDate* and *tillTime*.

> Notice: The command [hmCal_GET VISIBLE FRAME](hmCal_GET-VISIBLE-FRAME.md) returns only the visible area.

<a id="nummer_00002"></a>

## Example

The following example shows the current time range of the calendar:

```4d
C_DATE($vd_date1;$vd_date2)
C_LONGINT($vl_time1;$vl_time2)

hmCal_GET VISIBLE TIMERANGE(hmCal;$vd_date1;$vl_time1;$vd_date2;$vl_time2)
```
