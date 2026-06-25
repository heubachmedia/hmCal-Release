[Columns](../../guides/category-pages/columns.md)

# hmCal_Get Column Cell Value

`hmCal_Get Column Cell Value(area;reference;targetRef;content) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | column reference |
| targetRef | Longint | -> | appointment or user id |
| content | Text | <- | cell content |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Column Cell Value*** sets a cell value for a column defined by the parameter *reference*. You must have set the cell value with the command [hmCal_Set Column Cell Value](hmCal_Set-Column-Cell-Value.md).

The parameter *targetRef* is depending of the current view. If you execute the command in the user multi day view, the parameter *targetRef* defines the user reference. If you execute the command in the project view, the parameter *targetRef* defines the appointment reference.

You get the cell content in the parameter *content*.

<a id="nummer_00002"></a>

## Example

The following example returns the cell content:

```4d
C_LONGINT($vl_error)
C_TEXT($vt_content)

$vt_content:=""
$vl_error:=hmCal_Get Column Cell Value (hmCal;1;39;$vt_content)
```
