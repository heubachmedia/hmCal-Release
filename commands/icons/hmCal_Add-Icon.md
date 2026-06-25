[Icons](../../guides/category-pages/icons.md)

# hmCal_Add Icon

`hmCal_Add Icon(area;reference;picture) -> error code`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | Icon-ID |
| picture | Picture | -> | Picture variable |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_Add Icon*** you can create a new icon. Pass your unique reference in the parameter *reference*, so you can identify the icon.

You can set the icon for appointments with the command [hmCal_Set App Property](../appointments/hmCal_Set-App-Property.md).

Put a picture variable into the parameter *picture*. hmCal supports the following picture types:

- jpg
- png
- bmp
- gif
- tiff

<a id="nummer_00002"></a>

## Example

The following example creates a new icon in memory:

```4d
C_LONGINT($vl_error)
C_PICTURE($vb_myicon)

$vl_error:=hmCal_Add Icon(hmCal;1;$vb_myicon)
```
