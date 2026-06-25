[Special days](../../guides/category-pages/special-days.md)

# hmCal_Get Special Day Name

`hmCal_Get Special Day Name(area;date) -> text`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| date | Date | -> | Date |
| text | Text | <- | Description text |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Special Day Name*** returns the special name of a day in the month view. If there is no special text for the day available, the function returns an empty string.

<a id="nummer_00002"></a>

## Example

The following example returns the special text of the current day:

```4d
C_TEXT($vt_text)

$vt_text:=hmCal_Get Special Day Name((hmCal;Current date)
```
