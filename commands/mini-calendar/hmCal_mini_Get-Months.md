[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_Get Months

`hmCal_mini_Get Months(area) -> months`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal-mini area |
| months | Longint | <- | number months |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_Get Months*** returns the number of visible months of the calendar.

<a id="nummer_00002"></a>

## Example

The following example returns the number of visible months:

```4d
C_LONGINT($vl_month)

$vl_month:=hmCal_mini_Get Months(hmCalmini)
```
