[Columns](../../guides/category-pages/columns.md)

# hmCal_Set Column Cell Value

`hmCal_Set Column Cell Value(area;reference;targetRef;content) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | column reference |
| targetRef | Longint | -> | appointment or user id |
| content | Text | -> | cell content |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Set Column Cell Value*** sets a new cell value for a column, defined by the parameter *reference*. The parameter *targetRef* is depending of the current view. If you execute the command in the user multi day view, the parameter *targetRef* defines the user reference. If you execute the command in the project view, the parameter *targetRef* defines the appointment reference. The parameter *content* defines the cell content as text. If you want to delete the content, just pass an empty string in the parameter *content*.

<a id="nummer_00002"></a>

## Example

The following examples defines a new cell value:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Set Column Cell Value (hmCal;1;39;"cell value")
```
