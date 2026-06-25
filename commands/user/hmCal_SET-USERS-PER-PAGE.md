[User](../../guides/category-pages/user.md)

# hmCal_SET USERS PER PAGE

`hmCal_SET USERS PER PAGE(area;number)`

```
Parameter          Typ              Beschreibung
area               Longint      ->  hmCal area
number             Longint      ->  number of users
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET USERS PER PAGE*** definies, how many users should be displayed on one page of the user day view.

<a id="nummer_00002"></a>

## Example

The following example shows in the user day view 10 users per page:

```4d
hmCal_SET USERS PER PAGE(hmCal;10)
```
