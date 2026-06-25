[Areas](../../guides/category-pages/areas.md)

# hmCal_Set Timezone

`hmCal_Set Timezone(area;timezone) = error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| timezone | Text | -> | new timezone |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Set Timezone*** sets the current timezone. You must call this command if you want to export or import data in the iCalendar format.

<a id="nummer_00002"></a>

## Example

The following example sets the current timezone:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Set Timezone(hmCal;"Europe/Berlin")
```
