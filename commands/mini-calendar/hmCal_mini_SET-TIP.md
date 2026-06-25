[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_SET TIP

`hmCal_mini_SET TIP(area;date;tiptext)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal-mini area |
| date | Date | -> | date for tiptext |
| tiptext | Text | -> | tiptext |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_SET TIP*** displays a tiptext for a specific date, defined by the parameter *date*. If you want to delete the tiptext for the date, simply pass an empty string in the parameter *tiptext*.

<a id="nummer_00002"></a>

## Example

The following example shows a tiptext if the mouse moves of the current date:

```4d
hmCal_mini_SET TIP(hmCalmini;Current Date;"today")
```
