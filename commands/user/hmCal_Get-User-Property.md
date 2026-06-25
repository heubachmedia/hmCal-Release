[User](../../guides/category-pages/user.md)

# hmCal_Get User Property

`hmCal_Get User Property(area;userID;property;valueReal;valueText) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| userID | Longint | -> | user reference |
| property | Longint | -> | user property |
| valueReal | Real | <- | real value to set |
| valueText | Text | <- | text value to set |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command***hmCal_Get User Property*** returns a property of an existing user. See chapter [hmCal_Set User Property](hmCal_Set-User-Property.md) for an overview of all properties.
