[Utilities](../../guides/category-pages/utilities.md)

# hmCal_16To8BitRGB

`hmCal_16To8BitRGB(red;green;blue) -> 8BitRGB`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| red | Longint | -> | red RGB color |
| green | Longint | -> | green RGB color |
| blue | Longint | -> | blue RGB color |
| 8BitRGB | Longint | <- | 8 bit RGB color |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_16To8BitRGB*** converts the three 16 bits of RGB values in 8-bits of RGB values.

<a id="nummer_00002"></a>

## Example

The following example converts the color red of the 4D color-table into a 16 bits RGB expression and into a 8-bits RGB expression:

```4d
C_LONGINT($vl_red;$vl_green;$vl_blue;$vl_8bitRGB)

$vl_red:=0
$vl_green:=0
$vl_blue:=0

hmCal_INDEX2RGB(red;$vl_red;$vl_green;$vl_blue)
$vl_8bitRGB=hmCal_16To8BitRGB($vl_red;$vl_green;$vl_blue)
```
