[Stylesheets](../../guides/category-pages/stylesheets.md)

# hmCal_Apply Stylesheet Ex

`hmCal_Apply Stylesheet Ex(area;reference;type1;type2;type3) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | stylesheet-id |
| type1 | Longint | -> | type 1 |
| type2 | Longint | -> | type 2 |
| type3 | Longint | -> | type 3 |
| error | Longint | <- | error-code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Apply Stylesheet Ex*** sets an existing stylesheet for several objects. It works exactly the same like [hmCal_Apply Stylesheet](hmCal_Apply-Stylesheet.md), but with this command you can pass a *type3* which is needed for some selectors. See [hmCal_Apply Stylesheet](hmCal_Apply-Stylesheet.md) for all selectors.

<a id="nummer_00002"></a>

## Example

The following example creates a new stylesheet and sets the style for a cell:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Add Stylesheet (hmCal;1;"Arial";20;Bold)
$vl_error:=hmCal_Apply Stylesheet Ex (hmCal;1;9;2;20)
```
