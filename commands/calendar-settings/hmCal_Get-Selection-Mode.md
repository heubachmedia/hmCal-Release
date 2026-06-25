[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Get Selection Mode

`hmCal_Get Selection Mode(area) -> mode`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| mode | Longint | <- | selection mode |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Selection Mode*** returns the current selection mode of the calendar. There are three modes:

- 0 = no appointment selectable
- 1 = only one appointment selectable
- 2 = more than one appointment selectable

<a id="nummer_00002"></a>

## Example

The following example returns the current selection mode:

```4d
C_LONGINT($vl_mode)

$vl_mode=hmCal_Get Selection Mode(hmCal)
```
