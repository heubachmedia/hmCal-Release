[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Get Visible Weeks

`hmCal_Get Visible Weeks(area) -> weeks`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| weeks | Longint | <- | number of weeks |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Visible Weeks*** returns the number of visible weeks of the calendar in the month view.

> Notice: The command only returns the number you have set by the command [hmCal_SET VISIBLE WEEKS](hmCal_SET-VISIBLE-WEEKS.md). If the command returns *0*, it means that the month view shows the standard view (5 or 6 weeks).

<a id="nummer_00002"></a>

## Example

The following example returns the number of visible weeks defined by the command [hmCal_SET VISIBLE WEEKS](hmCal_SET-VISIBLE-WEEKS.md):

```4d
C_LONGINT($vl_weeks)

$vl_weeks:=hmCal_Get Visible Weeks(hmCal)
```
