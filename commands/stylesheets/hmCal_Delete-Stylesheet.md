[Stylesheets](../../guides/category-pages/stylesheets.md)

# hmCal_Delete Stylesheet

`hmCal_Delete Stylesheet(area;reference) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | stylesheet-id |
| error | Longint | <- | error-code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Delete Stylesheet*** deletes a stylesheet. You can delete stylesheets, even if these are still used. These objects are then drawn in the standard font.

<a id="nummer_00002"></a>

## Example

The following example deletes a stylesheet:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Delete Stylesheet(hmCal;1)
```
