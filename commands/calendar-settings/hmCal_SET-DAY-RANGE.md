[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET DAY RANGE

`hmCal_SET DAY RANGE(area;days)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| days | Longint | -> | number of days |

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_SET DAY RANGE*** you can define, how many days should be visible in the multi day view. Only values between 1 and 1000 days are valid. All other values are ignored.

<a id="nummer_00002"></a>

## Example

The following example shows 14 days in the multi day view:

```4d
hmCal_SET DAY RANGE(hmCal;14)
```
