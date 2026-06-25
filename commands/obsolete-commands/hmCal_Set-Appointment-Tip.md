[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_Set Appointment Tip

`hmCal_Set Appointment Tip(area;reference;tiptext) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | appointment-id |
| tiptext | Text | -> | tiptext |
| error | Longint | <- | error-code |

*Notice: This command is obsolete in version 2.0. Please use

[hmCal_Set App Property](../appointments/hmCal_Set-App-Property.md)!*

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_Set Appointment Tip*** you can set the tiptext for an appointment. You can delete a tiptext, if you pass an empty string as the parameter *tiptext*. Tips are help texts if you move your mouse above an appointment.

> Notice: the tiptext can be 255 characters long.

<a id="nummer_00002"></a>

## Example

The following example sets the tiptext for an appointment:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Set Appointment Tip(hmCal;89;"this is a tiptext")
```
