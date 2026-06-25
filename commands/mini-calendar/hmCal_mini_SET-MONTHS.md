[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_SET MONTHS

`hmCal_mini_SET MONTHS(area;months)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal-mini area |
| months | Longint | -> | number of month |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_SET MONTHS*** sets the number of visible month of the calendar.

<a id="nummer_00002"></a>

## Example

The following example shows the first three months of the year 2007:

```4d
C_DATE($vd_date)

$vd_date:=Add to Date(Current Date;2007;1;1)

hmCal_mini_SET START DATE(hmCalmini;$vd_date)
hmCal_mini_SET MONTHS(hmCal;3)
```
