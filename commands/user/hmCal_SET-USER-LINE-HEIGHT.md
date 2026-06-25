[User](../../guides/category-pages/user.md)

# hmCal_SET USER LINE HEIGHT

`hmCal_SET USER LINE HEIGHT(area;reference;height)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | user-id |
| height | Longint | -> | height in pixels |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET USER LINE HEIGHT*** defines a custom height of a user, defined by the user reference, in the user multi day view. If you pass a height of *0*, a variable height is used (standard). If you pass a value greater than 0, this height is used for the line height of the user. In this case, the height is not variable.

<a id="nummer_00002"></a>

## Example

The following example sets the height of the user with the ID #5 to 100 pixels:

```4d
hmCal_SET USER LINE HEIGHT(hmCal;5;100)
```
