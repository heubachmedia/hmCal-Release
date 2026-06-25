[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_Add Stylesheet

`hmCal_mini_Add Stylesheet(area;reference;fontname;fontsize,fontstyle) -> error`

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

With the command ***hmCal_mini_Add Stylesheet*** you can create a new stylesheet. Into *reference* you put your own identification. The parameters *fontname*, *fontsize* and *fontstyle* sets the font properties of the stylesheet. For the parameter *fontstyle* you can use the pre-defined constants of 4th dimension: *Plain*, *Bold*, *Italic*, *Underline* and strikethrough (=8) are supported in combination. The is no 4D constant available for strikethrough, so you have to use the number 8. Later you can also modify stylesheets with the command [hmCal_Set Stylesheet](../stylesheets/hmCal_Set-Stylesheet.md).

<a id="nummer_00002"></a>

## Example

The following example creates a stylesheet:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_mini_Add Stylesheet($hmCalmini;1;"Arial";10;Bold+Italic)
```
