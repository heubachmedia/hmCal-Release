[User](../../guides/category-pages/user.md)

# hmCal_Add User

`hmCal_Add User(area;reference;description) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | user-id |
| description | Text | -> | user-description |
| error | Longint | <- | error-code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Add User*** creates a new user to the calendar definied by parameter *area*. You need to create a user only if you use the user views.

In the parameter *reference* you pass your internal, unique number of the user. Over this number the users can be identified later clearly.

If you pass an user reference twice, the command will be ignored and returns the error *hmCal_UserAlreadyExists*.

In the parameter *decription* you pass the caption of the user.

<a id="nummer_00002"></a>

## Example

The following example creates a new user:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Add User(hmCal;174;"Mr. Smith")
```
