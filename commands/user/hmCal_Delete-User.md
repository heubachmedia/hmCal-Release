[User](../../guides/category-pages/user.md)

# hmCal_Delete User

`hmCal_Delete User(area;reference) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | user-id |
| error | Longint | <- | error-code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Delete User*** deletes a user from the calendar definied by the parameter *area*. The parameter *reference* definies which user should be deleted.

<a id="nummer_00002"></a>

## Example

The following example deletes the user with the id *174*:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Delete User(hmCal;174)
```
