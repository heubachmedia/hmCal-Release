[Utilities](../../guides/category-pages/utilities.md)

# hmCal_INDEX2RGB

`hmCal_INDEX2RGB(indexcolor;red;green;blue)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| indexcolor | Longint | -> | 4D indexcolor |
| red | Longint | <- | red RGB color |
| green | Longint | <- | green RGB color |
| blue | Longint | <- | blue RGB color |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_INDEX2RGB*** converts an index color of the 4D color-table into a RGB value. The command returns all three RGB colors. These values are needed then later among other commands in hmCal. The index color must indicate a value between 0 and 255.

<a id="nummer_00002"></a>

## Example

The following example converts the color red of the 4D-color-table into a RGB expression:

```4d
C_LONGINT($vl_red;$vl_green;$vl_blue)

$vl_red:=0
$vl_green:=0
$vl_blue:=0

hmCal_INDEX2RGB(red;$vl_red;$vl_green;$vl_blue)
```
