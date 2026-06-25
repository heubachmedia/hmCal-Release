[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET UNIT

`hmCal_SET UNIT(area;raster)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| raster | Longint | -> | raster in seconds |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET UNIT*** sets the raster of the calendar. The creation and drag and drop of appointments based on the raster. You can pass a raster value from 0 to 3600 seconds. That represents a period from 0 to 60 minutes.

<a id="nummer_00002"></a>

## Example

The following example sets the raster to 15 minutes:

```4d
hmCal_SET UNIT(hmCal;60*15)
```
