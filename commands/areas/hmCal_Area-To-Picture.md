[Areas](../../guides/category-pages/areas.md)

# hmCal_Area To Picture

`hmCal_Area To Picture (area;format;dpiX;dpiY) -> Picture`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| format | Longint | -> | picture format |
| dpiX | Longint | -> | DPI-X or 0 (default) |
| dpiY | Longint | -> | DPI-Y or 0 (default) |
| Picture | Picture | <- | Picture of the hmCal-Area |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Area To Picture*** returns a picture of the hmCal area. The area can be both on the screen indicated area, and with [hmCal_New Offscreen Area](hmCal_New-Offscreen-Area.md) created area. Scrollbars are not drawn in the picture.

hmCal supports following native picture formats:

- 1 = jpg
- 2 = png
- 3 = bmp
- 4 = gif
- 5 = tiff
- 6 = pdf (only on Macintosh)
- 7 = SVG
- 8 = EMF (not supported)
- 9 = WMP
- 10 = DDS

You can also use the predefinied [Constants](../../guides/appendix/Constants.md).

You can define your own size of the picture by using the selectors *hmCal_prop_PrintingWidth* and *hmCal_prop_PrintingHeight* with the command [hmCal_SET AREA PROPERTY](hmCal_SET-AREA-PROPERTY.md).

<a id="nummer_00002"></a>

## Example

The following example creates a picture variable of the current hmCal area:

```4d
C_PICTURE($vb_hmcal)

$vb_hmcal:=hmCal_Area To Picture(hmCal;hmCal_picture_jpg)
```
