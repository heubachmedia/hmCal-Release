[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Get Unit

`hmCal_Get Unit(area) -> raster`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| raster | Longint | <- | raster in seconds |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Unit*** returns the current raster of the calendar area. Raster can be a value from 0 to 3600 seconds. That represents a period from 0 to 60 minutes.

<a id="nummer_00002"></a>

## Example

The following example returns the current raster of the calendar:

```4d
C_LONGINT($vl_unit)

$vl_unit:=hmCal_Get Unit(hmCal)
```
