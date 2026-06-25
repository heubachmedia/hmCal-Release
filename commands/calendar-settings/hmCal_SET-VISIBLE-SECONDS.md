[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET VISIBLE SECONDS

`hmCal_SET VISIBLE SECONDS(area;seconds)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| seconds | Longint | -> | number of seconds |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET VISIBLE SECONDS*** sets the number of visible seconds of the calendar. Only values between 3600 and 86400 seconds are allowed. All other values are ignored.

<a id="nummer_00002"></a>

## Example

The following example shows all 24 hours of a day, so that scrolling is not necessary:

```4d
hmCal_SET VISIBLE SECONDS(hmCal;24*3600)
```
