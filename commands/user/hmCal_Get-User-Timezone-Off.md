[User](../../guides/category-pages/user.md)

# hmCal_Get User Timezone Off

`hmCal_Get User Timezone Off(area;reference) -> offset`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | user-id |
| offset | Longint | <- | Time zone offset |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get User Timezone Off*** returns the time zone offset in seconds of a user where the time zone was defined previously by the command [hmCal_SET USER TIMEZONE](hmCal_SET-USER-TIMEZONE.md).

<a id="nummer_00002"></a>

## Example

The following example sets the current time zone and the timezone of the user with the ID 2, returns the time zone and the offset of the user:

```4d
C_LONGINT($vl_error;$vl_offset)
C_TEXT($vt_timezone)

$vl_error:=hmCal_Set Timezone (calArea;"Europe/Berlin")
hmCal_SET USER TIMEZONE (calArea;2;"Asia/Tokyo")
$vt_timezone:=hmCal_Get User Timezone (calArea;2)
$vl_offset:=hmCal_Get User Timezone Off (calArea;2)
```
