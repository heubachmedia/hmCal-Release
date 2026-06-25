[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_SET REMINDER ICON

`hmCal_SET REMINDER ICON(area;reference;icon)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
reference          Longint      ->  appointment id
icon               Longint      ->  0 = no icon
                                    1 = show icon
```

*Notice: This command is obsolete in version 2.0. Please use

[hmCal_Set App Property](../appointments/hmCal_Set-App-Property.md)!*

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_SET REMINDER ICON*** you can display an reminder-icon for the appointment definied by the parameter *reference*. If you pass a *0* in the parameter *reference*, the command will be applied to all appointments.

<a id="nummer_00002"></a>

## Example

The following example sets the reminder-icon to an appointment:

```4d
hmCal_SET REMINDER ICON(hmCal;89;1)
```
