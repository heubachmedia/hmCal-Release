[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Set Scroll Range

`hmCal_Set Scroll Range(area;from;to) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| from | Longint | -> | from time |
| to | Longint | -> | to time |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Set Scroll Range*** sets the scroll area in the day, user day and week view. The area can be scrolled by the user. The parameter *from* sets the start time. The parameter *to* sets the end time. Please note, that the parameters have no conflict with the commands [hmCal_SET VISIBLE HOURS](../obsolete-commands/hmCal_SET-VISIBLE-HOURS.md) and [hmCal_SET START TIME](hmCal_SET-START-TIME.md)), else you get an error.

The default values are 0 and 86400. You can get the current values with the command [hmCal_GET SCROLL RANGE](hmCal_GET-SCROLL-RANGE.md).

<a id="nummer_00002"></a>

## Example

The following example sets the scrollable area to 7:00 AM to 11:00 PM:

```4d
C_LONGINT($vl_error)

$vl_error=hmCal_Set Scroll Range (calArea;?07:00:00?+0;?23:00:00?+0)
```
