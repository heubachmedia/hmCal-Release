[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_SET DATE

`hmCal_mini_SET DATE(area;date)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal-mini area |
| startdate | Date | -> | new selected day |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_SET DATE*** selects the date in the hmcal-mini-calendar, defined by the parameter *date*. The date can lie also outside of the indicated date range. The command causes an immediate redraw of the area.

The command has an effect only if the date deviates from the current selected date.

<a id="nummer_00002"></a>

## Example

The following example indicates the current date:

```4d
hmCal_mini_SET DATE(hmCalmini;Current Date)
```
