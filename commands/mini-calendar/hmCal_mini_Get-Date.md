[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_Get Date

`hmCal_mini_Get Date(area) -> date`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal-mini Bereich |
| date | Date | <- | current selected date |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_Get Date*** returns the current selected date of the calendar.

<a id="nummer_00002"></a>

## Example

The following example selects the next date:

```4d
C_DATE($vd_date)

$vd_date:=hmCal_mini_Get Date(hmCal)
hmCal_mini_SET DATE(hmCal;$vd_date+1)
```
