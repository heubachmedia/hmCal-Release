[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_GET SCROLL RANGE

`hmCal_GET SCROLL RANGE(area;from;to)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| from | Longint | <- | from time |
| to | Longint | <- | to time |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET SCROLL RANGE*** returns the scroll area of the day, user day and week view. The area can be scrolled by the user. The parameter *from* returns the start time. The parameter *to* returns the end time.

The default values are 0 and 86400. You can set the values with the command [hmCal_Set Scroll Range](hmCal_Set-Scroll-Range.md).

<a id="nummer_00002"></a>

## Example

The following example returns the current scrollable area:

```4d
C_LONGINT($vl_from;$vl_to)

$vl_from:=0
$vl_to:=0
hmCal_GET SCROLL RANGE (calArea;$vl_from;$vl_to)
```
