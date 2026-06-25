[Columns](../../guides/category-pages/columns.md)

# hmCal_Delete Column Values

`hmCal_Delete Column Values(area;reference) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | column reference |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Delete Column Values*** deletes all values of a column defined by the parameter *reference*. You can set values with the command [hmCal_Set Column Cell Value](hmCal_Set-Column-Cell-Value.md).

<a id="nummer_00002"></a>

## Example

The following example deletes all values of a column:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Delete Column Values (hmCal;1)
```
