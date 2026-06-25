[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Get Start Date

`hmCal_Get Start Date(area) -> date`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal Bereich |
| date | Date | <- | current starting date |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Start Date*** returns the current starting date of the calendar. The date must not be the first visible date in the calendar.

<a id="nummer_00002"></a>

## Example

The following example shows the next date in the calendar:

```4d
C_DATE($vd_date)

$vd_date:=hmCal_Get Start Date(hmCal)
hmCal_SET START DATE(hmCal;$vd_date+1)
```
