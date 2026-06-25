[Icons](../../guides/category-pages/icons.md)

# hmCal_Add Icon File

`hmCal_Add Icon File(area;reference;path) -> error code`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | Icon-ID |
| path | Text | -> | Iconpfad |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_Add Icon File*** you can create a new icon. Pass your unique reference in the parameter *reference*, so you can identify the icon.

You can set the icon for appointments with the command [hmCal_Set App Property](../appointments/hmCal_Set-App-Property.md).

Set a valid path to the picture in the parameter *path*. hmCal supports the following picture types:

- jpg
- png
- bmp
- gif
- tiff

**Important: On Mac you have to use the POSIX path format.**

<a id="nummer_00002"></a>

## Example

The following example creates a new icon in memory:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Add Icon File(hmCal;1;"C:\\icon.jpg")
```
