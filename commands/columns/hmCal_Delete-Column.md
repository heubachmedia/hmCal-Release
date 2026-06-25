[Columns](../../guides/category-pages/columns.md)

# hmCal_Delete Column

`hmCal_Delete Column(area;reference) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | column reference |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Delete Column*** deletes a column, defined by the parameter *reference*. If you pass *0* as reference, all columns, except the standard column with the reference -1, will be deleted.

You cannot delete the standard column with the reference -1.

<a id="nummer_00002"></a>

## Example

The following examples deletes a column:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Delete Column (hmCal;1)
```
