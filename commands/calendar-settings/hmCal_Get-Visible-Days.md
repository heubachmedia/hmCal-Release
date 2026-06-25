[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Get Visible Days

`hmCal_Get Visible Days(area) -> days`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| days | Longint | <- | number days |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Visible Days*** returns the number of visible days of the calendar in the user multi day view.

<a id="nummer_00002"></a>

## Example

The following example returns the number of visible days:

```4d
C_LONGINT($vl_days)

$vl_days:=hmCal_Get Visible Days(hmCal)
```
