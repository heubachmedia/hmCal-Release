[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Get View

`hmCal_Get View(area) -> view`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| view | Longint | <- | current view |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get View*** returns the current view.

<a id="nummer_00002"></a>

## Example

```4d
C_LONGINT($vl_view)

$vl_view=hmCal_Get View(hmCal)
```
