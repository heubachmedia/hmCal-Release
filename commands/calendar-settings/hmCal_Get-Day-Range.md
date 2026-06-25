[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Get Day Range

`hmCal_Get Day Range(area) -> days`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| days | Longint | <- | number of days |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Day Range*** returns, the number of visible days in the multi-day view. Values are possible between 2 and 1000 days.

<a id="nummer_00002"></a>

## Example

The following example returns the current number of visible days:

```4d
C_LONGINT($vl_days)

$vl_days=hmCal_Get Day Range(hmCal)
```
