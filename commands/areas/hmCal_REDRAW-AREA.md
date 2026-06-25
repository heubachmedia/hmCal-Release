[Areas](../../guides/category-pages/areas.md)

# hmCal_REDRAW AREA

`hmCal_REDRAW AREA(area)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_REDRAW AREA*** implements an immediate redraw of the hmCal area. You will use this instruction only very rarely, because hmCal is in such a way optimized that the area is redrawn if it is necessary.

<a id="nummer_00002"></a>

## Example

```4d
hmCal_REDRAW AREA (hmCalArea)
```
