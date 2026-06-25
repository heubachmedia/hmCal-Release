[Special days](../../guides/category-pages/special-days.md)

# hmCal_HIGHLIGHT DAY

`hmCal_HIGHLIGHT DAY(area;date)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| date | Datum | -> | highlighted date |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_HIGHLIGHT DAY*** highlights a date, defined by the parameter *date*, in the calendar. You can just highlight one day. All other lighted days will be overwritten. The command will be obsolete one day and you should use [hmCal_Add Special Day](hmCal_Add-Special-Day.md) instead!

Note: Please you use the command [hmCal_Add Special Day](hmCal_Add-Special-Day.md) to mark one or more days. With the command ***hmCal_HIGHLIGHT DAY*** you can mark only one day at the same time.

<a id="nummer_00002"></a>

## Example

The following example highlights tomorrow's day:

```4d
hmCal_HIGHLIGHT DAY(hmCal;Current Date+1)
```
