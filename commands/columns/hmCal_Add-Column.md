[Columns](../../guides/category-pages/columns.md)

# hmCal_Add Column

`hmCal_Add Column(area;reference;width;line1;line2;justification) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | column reference |
| width | Longint | -> | column width in pixels |
| line1 | Text | -> | column header text line 1 |
| line2 | Text | -> | column header text line 2 |
| justification | Longint | -> | justification |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Add Column*** creates a column in the user multi day view or the project view.

Pass your unique column reference in the parameter *reference*. All columns are displayed in the order in which they are created. The parameter *width* defines the width of the column in pixels. The parameters *line1* and *line2* defines the header texts of the column. A second line is only visible in the project view, else you pass an empty string.

The parameter *justification* can have 4 possible values:

- 1 = standard
- 2 = left
- 3 = center
- 4 = right

> Notice: You can also use the constants of 4D.

<a id="nummer_00002"></a>

## Example

The following example creates a new column:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Add Column (hmCal;1;150;"Zeile 1";"Zeile 2";1)
```
