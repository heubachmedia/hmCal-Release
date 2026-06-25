[Working Hours](../../guides/category-pages/working-hours.md)

# hmCal_DELETE WORKING HOURS

`hmCal_DELETE WORKING HOURS(area;userID)`

```
Parameter          Type             Description
area               Longint       ->  hmCal area
userID             Longint       ->  user reference or
                                     0 or -1
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_DELETE WORKING HOURS*** clears all working hours of the area. Pass a *userID* to clear all working hours from a user. If you pass 0, you can clear all working hours, except the user working hours. If you pass -1, you can clear **all** working hours (including the working hours of all users).

<a id="nummer_00002"></a>

## Example

The following example deletes all working hours of the area:

```4d
hmCal_DELETE WORKING HOURS($hmCal;-1)
```
