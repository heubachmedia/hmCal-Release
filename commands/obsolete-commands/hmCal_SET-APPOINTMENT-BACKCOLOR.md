[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_SET APPOINTMENT BACKCOLOR

`hmCal_SET APPOINTMENT BACKCOLOR(area;reference;red;green;blue)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| rference | Longint | -> | appointment-id |
| red | Longint | -> | red color |
| green | Longint | -> | green color |
| blue | Longint | -> | blue color |

*Notice: This command is obsolete in version 2.0. Please use

[hmCal_SET COLOR](../calendar-settings/hmCal_SET-COLOR.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET APPOINTMENT BACKCOLOR*** sets the background color of appointment, definied by the parameter *reference* to the RGB color defined by the color components *red*, *green* and *blue*. If you pass a *0* in the parameter *reference*, the command will be applied to all appointments. If you pass a *-1* in the parameter *reference*, the command will be applied to all new appointments.

<a id="nummer_00002"></a>

## Example

1. The following example sets the background color of an appointment to red:

```4d
hmCal_SET APPOINTMENT BACKCOLOR(hmCal;1;0xFFFF;0;0)
```

2. The following example sets the background color of all appointments to red:

```4d
hmCal_SET APPOINTMENT BACKCOLOR(hmCal;0;0xFFFF;0;0)
```
