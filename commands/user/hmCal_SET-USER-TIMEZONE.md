[User](../../guides/category-pages/user.md)

# hmCal_SET USER TIMEZONE

`hmCal_SET USER TIMEZONE(area;reference;timezone)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | user-id |
| timezone | Text | -> | Time zone |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET USER TIMEZONE*** sets the time zone of a user in the user day area. Pass the time zone text in the parameter *timezone*. If you pass an empty string, the user has no specific time zone. In this case, the user has the standard time zone (defined by [hmCal_Set Timezone](../areas/hmCal_Set-Timezone.md)). Before you call this command, you have to set the standard time zone with the command [hmCal_Set Timezone](../areas/hmCal_Set-Timezone.md). Only in this case, hmCal can calculate an offset for the user time zone. The offset you can get with the command [hmCal_Get User Timezone Off](hmCal_Get-User-Timezone-Off.md).

<a id="nummer_00002"></a>

## Example

The following example sets the current time zone and the timezone of the user with the ID 2:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Set Timezone (calArea;"Europe/Berlin")
hmCal_SET USER TIMEZONE (calArea;2;"Asia/Tokyo")
```
