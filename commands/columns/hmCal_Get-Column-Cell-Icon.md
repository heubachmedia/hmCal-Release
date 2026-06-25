[Columns](../../guides/category-pages/columns.md)

# hmCal_Get Column Cell Icon

`hmCal_Get Column Cell Icon(area;reference;targetRef;iconRef) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | column reference |
| targetRef | Longint | -> | appointment or user id |
| iconRef | Longint | <- | icon reference |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Column Cell Icon*** returns the icon reference of a cell. You can define an icon for a cell with the command [hmCal_Set Column Cell Icon](hmCal_Set-Column-Cell-Icon.md). The parameter *reference* defines the column reference. The parameter *targetRef* is depending of the current view. If you execute the command in the user multi day view, the parameter *targetRef* defines the user reference. If you execute the command in the project view, the parameter *targetRef* defines the appointment reference.

The icon reference is returned in the parameter *iconRef*.

<a id="nummer_00002"></a>

## Example

The following example returns the icon reference of a cell:

```4d
C_LONGINT($vl_error;$vl_icon)

$vl_icon:=0
$vl_error:=hmCal_Get Column Cell Icon (hmCal;1;39;$vl_icon)
```
