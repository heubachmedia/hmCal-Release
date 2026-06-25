[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Get Visible Seconds

`hmCal_Get Visible Seconds(area) -> seconds`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| seconds | Longint | <- | number of seconds |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Visible Seconds*** returns the number of visible seconds of the calendar.

<a id="nummer_00002"></a>

## Example

The following example returns the number of visible seconds:

```4d
C_LONGINT($vl_seconds)

$vl_seconds:=hmCal_Get Visible Seconds(hmCal)
```
