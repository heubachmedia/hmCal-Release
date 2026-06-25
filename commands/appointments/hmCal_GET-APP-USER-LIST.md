[Appointments](../../guides/category-pages/appointments.md)

# hmCal_GET APP USER LIST

`hmCal_GET APP USER LIST(area;reference;userlist)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
reference          Longint      ->  appointment reference
userlist           Longint-Array<-  Array with user id's
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET APP USER LIST*** returns a userlist used by the appointment. You can add several users with the command [hmCal_SET APP USER LIST](hmCal_SET-APP-USER-LIST.md).

<a id="nummer_00002"></a>

## Example

The following example returns a list with all users used by the appointment:

```4d
ARRAY LONGINT ($tl_users;0)

hmCal_GET APP USER LIST (hmCal;123;$tl_users)
```
