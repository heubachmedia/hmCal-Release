[Areas](../../guides/category-pages/areas.md)

# hmCal_Get Timezone

`hmCal_Get Timezone(area;timezone) = error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| timezone | Text | <- | new timezone |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Timezone*** returns the current timezone.

<a id="nummer_00002"></a>

## Example

The following example returns the current timezone:

```4d
C_TEXT($vt_timezone)
C_LONGINT($vl_error)

$vt_timezone:=""
$vl_error:=hmCal_Get Timezone(hmCal;$vt_timezone)
```
