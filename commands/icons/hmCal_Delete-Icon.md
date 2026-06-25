[Icons](../../guides/category-pages/icons.md)

# hmCal_Delete Icon

`hmCal_Delete Icon(area;reference) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | Icon-ID |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Delete Icon*** deletes an icon with the id defined by the parameter *reference*. You must have created the icon with the command [hmCal_Add Icon](hmCal_Add-Icon.md).

<a id="nummer_00002"></a>

## Example

The following example deletes an icon with the id *4*:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Delete Icon(hmCal;4)
```
