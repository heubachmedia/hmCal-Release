[Utilities](../../guides/category-pages/utilities.md)

# hmCal_GetStringWidth

`hmCal_GetStringWidth(Text;Font;Fontsize;Fontstyle) -> width`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| Text | Text | -> | Text |
| Font | Text | -> | Fontname |
| Fontsize | Longint | -> | Fontsize |
| Fontstyle | Longint | -> | Fontstyle |
| width | Longint | <- | string width in pixels |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GetStringWidth*** returns the width of a string, defined by font, fontsize and fontstyle. You can use the predefinied constants of 4D in the parameter *Fontstyle*.

<a id="nummer_00002"></a>

## Example

The following example returns the string width of a text:

```4d
C_LONGINT($vl_width)

$vl_width:=hmCal_GetStringWidth("Test";"Arial";10;Bold+Italic)
```
