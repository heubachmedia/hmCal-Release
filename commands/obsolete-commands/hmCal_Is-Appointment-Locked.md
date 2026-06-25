[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_Is Appointment Locked

`hmCal_Is Appointment Locked(area;reference) -> locked`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
reference          Longint      ->  appointment id
locked             Longint      <-  0 = not locked
                                    1 = locked
```

*Notice: This command is obsolete in version 2.0. Please use

[hmCal_Get App Property](../appointments/hmCal_Get-App-Property.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Is Appointment Locked*** returns if an appointment is locked or not.

<a id="nummer_00002"></a>

## Example

The following example returns if an appointment is locked:

```4d
C_BOOLEAN($vf_locked)

$vf_locked:=hmCal_Is Appointment Locked(hmCal;89)=1
```
