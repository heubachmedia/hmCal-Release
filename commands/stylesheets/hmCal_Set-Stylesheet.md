[Stylesheets](../../guides/category-pages/stylesheets.md)

# hmCal_Set Stylesheet

`hmCal_Set Stylesheet(area;reference;fontname;fontsize,fontstyle) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | stylesheet reference |
| fontname | Text | -> | fontname |
| fontsize | Longint | -> | fontsize |
| fontstyle | Longint | -> | fontstyle |
| error | Longint | <- | error-code |

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_Set Stylesheet*** you can overwrite a stylesheet. So you can set new properties to the stylesheet. For more information see chapter [hmCal_Add Stylesheet](hmCal_Add-Stylesheet.md).

<a id="nummer_00002"></a>

## Example

The following example updates an existing stylesheet:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Set Stylesheet(hmCal;1;"Courier New";10;Plain)
```
