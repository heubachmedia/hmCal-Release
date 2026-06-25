[Special days](../../guides/category-pages/special-days.md)

# hmCal_Get Highlighted Day

`hmCal_Get Highlighted Day(area) -> date`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| date | date | <- | highlighted date |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Highlighted Day*** returns the current highlighted date. The default highlighted date is the current date.

<a id="nummer_00002"></a>

## Example

The following example returns the current highlighted date:

```4d
C_DATE($vd_date)

$vd_date:=hmCal_Get Highlighted Day(hmCal)
```
