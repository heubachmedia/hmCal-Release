[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET VISIBLE WEEKS

`hmCal_SET VISIBLE WEEKS(area;weeks)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| weeks | Longint | -> | number of weeks |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET VISIBLE WEEKS*** sets the number of visible weeks in the month view. You can display up to 28 weeks simultaneously.

Pass *0* in the parameter *weeks* the calendar displays one month (5 or 6 weeks/standard view).

<a id="nummer_00002"></a>

## Example

The following example shows 10 weeks in the month view:

```4d
hmCal_SET VISIBLE WEEKS(hmCal;10)
```
