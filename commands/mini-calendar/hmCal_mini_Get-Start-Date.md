[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_Get Start Date

`hmCal_mini_Get Start Date(area) -> date`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal-mini Bereich |
| date | Date | <- | current starting date |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_Get Start Date*** returns the current starting date of the calendar. The date must not be the first visible date in the calendar.

<a id="nummer_00002"></a>

## Example

The following example shows the next month in the calendar:

```4d
C_DATE($vd_date)

$vd_date:=hmCal_mini_Get Start Date(hmCal)
$vd_date:=Add to Date($vd_date;0;1;0)
hmCal_mini_SET START DATE(hmCal;$vd_date)
```
