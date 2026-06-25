[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_GET APPOINTMENT BACKCOLOR

`hmCal_GET APPOINTMENT BACKCOLOR(area;reference;red;green;blue)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | appointment-id |
| red | Longint | <- | red color |
| green | Longint | <- | green color |
| blue | Longint | <- | blue color |

*Notice: This command is obsolete in version 2.0. Please use

[hmCal_GET COLOR](../calendar-settings/hmCal_GET-COLOR.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET APPOINTMENT BACKCOLOR*** returns all three color components of the background color of the appointment.

<a id="nummer_00002"></a>

## Example

The following example returns the background color of the appointment:

```4d
C_LONGINT($vl_red;$vl_green;$vl_blue)

$vl_red:=0
$vl_green:=0
$vl_blue:=0

hmCal_GET APPOINTMENT BACKCOLOR(hmCal;1;$vl_red;$vl_green;$vl_blue)
```
