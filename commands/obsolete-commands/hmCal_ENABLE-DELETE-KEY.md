[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_ENABLE DELETE KEY

`hmCal_ENABLE DELETE KEY(area;activate)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
activate           Longint      ->  0 = delete key deactivated
                                    1 = delete key activated
```

*Notice: This command is obsolete in version 1.8. Please use [hmCal_SET AREA PROPERTY](../areas/hmCal_SET-AREA-PROPERTY.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_ENABLE DELETE KEY*** defines if the delete key should be used in the calendar. If the delete key is deactivated the callback-event *hmCal_DeleteAppointment* will not released.

<a id="nummer_00002"></a>

## Example

The following example deactivates the deletion:

```4d
hmCal_ENABLE DELETE KEY(hmCal;0)
```
