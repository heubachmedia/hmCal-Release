[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_Lock Appointment

`hmCal_Lock Appointment(area;reference;locked) -> error`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
reference          Longint      ->  appointment id
locked             Longint      ->  0 = not locked
                                    1 = locked
error              Longint      <-  error-code
```

*Notice: This command is obsolete in version 2.0. Please use

[hmCal_Set App Property](../appointments/hmCal_Set-App-Property.md)!*

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_Lock Appointment*** you can lock an appointment. Pass the appointment reference to the parameter *reference*. The parameter *locked* defines if the appointment is locked or not. Locked appointments cannot be deleted or changed by the user.

<a id="nummer_00002"></a>

## Example

The following example locks an appointment:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Lock Appointment(hmCal;89;1)
```
