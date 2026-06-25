[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_SET START DATE

`hmCal_mini_SET START DATE(area;startdate)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal-mini area |
| startdate | Date | -> | new startday |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_SET START DATE*** sets the hmcal-mini-calendar to the starting date, defined by the parameter *startdate*. The calendar is redrawn again, so that the startdate is shown. The command causes an immediate redraw of the area.

The command has an effect only if the starting date deviates from the new starting date.

<a id="nummer_00002"></a>

## Example

The following example indicates the current date:

```4d
hmCal_mini_SET START DATE(hmCalmini;Current Date)
```
