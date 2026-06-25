[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_ALLOW DRAG NEW APPOINTMENT

`hmCal_ALLOW DRAG NEW APPOINTMENT(area;activate)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
activate           Longint      ->  0 = deactivated
                                    1 = activated
```

*Notice: This command is obsolete in version 1.8. Please use [hmCal_SET AREA PROPERTY](../areas/hmCal_SET-AREA-PROPERTY.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_ALLOW DRAG NEW APPOINTMENT*** defines if the user can create appointments by dragging the mouse. This is possible in all views, except the month view. If activated the callback-event *hmCal_NewAppointment* will released.

<a id="nummer_00002"></a>

## Example

The following example allows the user to create appointments by dragging the mouse:

```4d
hmCal_ALLOW DRAG NEW APPOINTMENT(hmCal;0)
```
