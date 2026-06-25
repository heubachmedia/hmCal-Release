[Appointments](../../guides/category-pages/appointments.md)

# hmCal_SET APP USER LIST

`hmCal_SET APP USER LIST(area;reference;userlist)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
reference          Longint      ->  appointment reference
userlist           Longint-Array->  Array with user id's
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET APP USER LIST*** adds users to an appointment. More than one user are only displayed by the project view. If you use other views, only the first user in the array will be used.

<a id="nummer_00002"></a>

## Example

Teh following example sets a user list to an appointment:

```4d
ARRAY LONGINT ($tl_users;3)

$tl_users{1}:=56
$tl_users{2}:=78
$tl_users{3}:=143

hmCal_SET APP USER LIST (hmCal;123;$tl_users)
```
