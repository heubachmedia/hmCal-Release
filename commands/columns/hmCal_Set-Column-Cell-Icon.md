[Columns](../../guides/category-pages/columns.md)

# hmCal_Set Column Cell Icon

`hmCal_Set Column Cell Icon(area;reference;targetRef;iconRef) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | column reference |
| targetRef | Longint | -> | appointment or user id |
| iconRef | Longint | -> | icon reference |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Set Column Cell Icon*** sets an icon for a column cell. The parameter *reference* defines the column reference. The parameter *targetRef* is depending of the current view. If you execute the command in the user multi day view, the parameter *targetRef* defines the user reference. If you execute the command in the project view, the parameter *targetRef* defines the appointment reference. The parameter *icon* defines the icon reference. You must have created the icon with the command [hmCal_Add Icon](../icons/hmCal_Add-Icon.md). If you want to delete the icon, just set *0* as the icon reference.

<a id="nummer_00002"></a>

## Example

The following example sets an icon for a column cell:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Set Column Cell Value (hmCal;1;39;"cell content")

$vl_error:=hmCal_Set Column Cell Icon (hmCal;1;39;1)
```
