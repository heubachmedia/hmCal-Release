[Areas](../../guides/category-pages/areas.md)

# hmCal_DELETE OFFSCREEN AREA

`hmCal_DELETE OFFSCREEN AREA(area)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_DELETE OFFSCREEN AREA*** you delete an area in the memory, which was created by [hmCal_New Offscreen Area](hmCal_New-Offscreen-Area.md). You **must** delete the area after the execution of [hmCal_New Offscreen Area](hmCal_New-Offscreen-Area.md) if the area is no longer needed.

<a id="nummer_00002"></a>

## Example

The following example provides a hmCal area, makes a picture from it and deletes this again.

```4d
C_LONGINT($vl_area;$vl_error)

$vl_area:=hmCal_New Offscreen Area (700;1000)
$vl_error:=hmCal_Area To Picture ($vl_area;"";1)
hmCal_DELETE OFFSCREEN AREA ($vl_area)
```
