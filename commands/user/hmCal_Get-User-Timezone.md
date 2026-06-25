[User](../../guides/category-pages/user.md)

# hmCal_Get User Timezone

`hmCal_Get User Timezone(area;reference) -> timezone`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | user-id |
| timezone | Text | <- | Time zone |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get User Timezone*** returns the time zone of a user which was defined previously be the command [hmCal_SET USER TIMEZONE](hmCal_SET-USER-TIMEZONE.md).

<a id="nummer_00002"></a>

## Example

The following example sets the current time zone and the timezone of the user with the ID 2 and returns the time zone of the user:

```4d
C_LONGINT($vl_error)
C_TEXT($vt_timezone)

$vl_error:=hmCal_Set Timezone (calArea;"Europe/Berlin")
hmCal_SET USER TIMEZONE (calArea;2;"Asia/Tokyo")
$vt_timezone:=hmCal_Get User Timezone (calArea;2)
```
