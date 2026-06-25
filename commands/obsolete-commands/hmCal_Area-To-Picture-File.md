[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_Area To Picture File

`hmCal_Area To Picture File (area;path;format) -> Error`

*Notice: This command is obsolete in version 5.0. Please use the command [hmCal_Area To Picture](../areas/hmCal_Area-To-Picture.md)!*

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| path | Text | -> | Path or empty string for default |
| format | Longint | -> | picture format |
| Error | Longint | <- | Error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Area To Picture File*** writes a picture file on the hard disk. The area can be both on the screen indicated area, and with [hmCal_New Offscreen Area](../areas/hmCal_New-Offscreen-Area.md) created area. Scrollbars are not drawn in the picture.

The parameter *path* defines the location of the picture file. If you pass an empty string, the picture is written to the application folder. The standard filename ist "hmCal".

hmCal supports following native picture formats:

- 1 = jpg
- 2 = png
- 3 = bmp
- 4 = gif
- 5 = tiff
- 6 = pdf (only on macintosh)
- 7 = SVG

You can also use the predefinied [Constants](../../guides/appendix/Constants.md).

You can define your own size of the picture by using the selectors *hmCal_prop_PrintingWidth* and *hmCal_prop_PrintingHeight* with the command [hmCal_SET AREA PROPERTY](../areas/hmCal_SET-AREA-PROPERTY.md).

<a id="nummer_00002"></a>

## Example

The following example saves the hmCal area to the hard disk:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Area To Picture File(hmCal;"MACINTOSH HD:hmCal.jpg";hmCal_picture_jpg)
```
