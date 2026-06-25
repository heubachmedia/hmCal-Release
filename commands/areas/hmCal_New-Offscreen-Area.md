[Areas](../../guides/category-pages/areas.md)

# hmCal_New Offscreen Area

`hmCal_New Offscreen Area(width;height) -> area`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| width | Longint | -> | width  of the area |
| height | Longint | -> | height of the area |
| area | Longint | <- | hmCal area |

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_New Offscreen Area*** you provide a new hmCal area in the memory, which is not indicated on the screen. You must release the memory with the command [hmCal_DELETE OFFSCREEN AREA](hmCal_DELETE-OFFSCREEN-AREA.md)!

<a id="nummer_00002"></a>

## Example

The following example provides a hmCal area, makes a picture from it and deletes this again.

```4d
C_LONGINT($vl_area;$vl_error)

$vl_area:=hmCal_New Offscreen Area (700;1000)
$vl_error:=hmCal_Area To Picture ($vl_area;"";1)
hmCal_DELETE OFFSCREEN AREA ($vl_area)
```
