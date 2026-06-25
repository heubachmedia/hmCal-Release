[User](../../guides/category-pages/user.md)

# hmCal_Scroll To User

`hmCal_Scroll To User(area;reference) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | user-id |
| error | Longint | <- | error-code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Scroll To User*** scrolls to a user in the current user-view, defined by the parameter *reference*.

In the parameter *reference* you pass your internal, unique number of the user.

If you pass a *0* in the parameter *reference*, the calendar scrolls to the first user.

The command has effects only if the calendar is in the user day view or user multi day view.

<a id="nummer_00002"></a>

## Example

The following example scrolls to the first user:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Scroll To User(hmCal;0)
```
