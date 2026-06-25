[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_GET COLOR

`hmCal_GET COLOR(area;type1;type2;red;green;blue)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| type1 | Longint | -> | object type |
| type2 | Longint | -> | reference or 0 |
| red | Longint | -> | red color component |
| green | Longint | -> | green color component |
| blue | Longint | -> | blue color component |

*Notice: This command is obsolete in version 7.0. Please use [hmCal_GET COLOR NEW](hmCal_GET-COLOR-NEW.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET COLOR*** returns the color of an object. You have to set the color with the command [hmCal_SET COLOR](hmCal_SET-COLOR.md).

<a id="nummer_00002"></a>

## Example

The following example returns the color of an appointment with the ID *12*:

```4d
C_LONGINT($vl_red;$vl_green;$vl_blue)

$vl_red:=0
$vl_green:=0
$vl_blue:=0

hmCal_GET COLOR(hmCal;13;12;$vl_red;$vl_green;$vl_blue)
```
