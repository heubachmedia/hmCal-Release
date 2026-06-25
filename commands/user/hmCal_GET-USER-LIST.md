[User](../../guides/category-pages/user.md)

# hmCal_GET USER LIST

`hmCal_GET USER LIST(area;userList)`

```4d
Parameter          Type             Description
area               Longint      ->  hmCal area
userList           ARRAY LONGINT<-  user references
```

<a id="nummer_00001"></a>

## Description

The command***hmCal_GET USER LIST*** returns all users, created with the command [hmCal_Add User](hmCal_Add-User.md), of the hmCal area.

<a id="nummer_00002"></a>

## Example

The following example returns a list of all users:

```4d
ARRAY LONGINT($tl_users;0)

hmCal_GET USER LIST($vl_area;$tl_users)
```
