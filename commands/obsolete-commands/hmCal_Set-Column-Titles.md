[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_Set Column Titles

`hmCal_Set Column Titles(area;reference;line1;line2) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | column reference |
| line1 | Text | -> | column header text line 1 |
| line2 | Text | -> | column header text line 2 |
| error | Longint | <- | error code |

*Notice: This command is obsolete in version 2.1. Please use

[hmCal_Set Column Property](../columns/hmCal_Set-Column-Property.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Set Column Titles*** sets the column header texts of the column defined by the parameter *reference*. The standard column has the reference *-1*. A second line is only visible in the project view, else you pass an empty string.

<a id="nummer_00002"></a>

## Example

The following example sets the column header texts:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Set Column Titles (hmCal;-1;"Appointment";"For Mrs. Smith")
```
