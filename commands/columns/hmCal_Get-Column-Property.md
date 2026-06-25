[Columns](../../guides/category-pages/columns.md)

# hmCal_Get Column Property

`hmCal_Get Column Property(area;reference;property;num;text) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | appointment reference |
| property | Longint | -> | property to get |
| num | Longint | <- | numeric value to get |
| text | Text | <- | text value to get |
| error | Longint | <- | errorcode |

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_Get Column Property*** you can get all properties of a column. In the parameter *reference* you must pass a column id. All properties you may use are described in chapter [hmCal_Set Column Property](hmCal_Set-Column-Property.md).

> Notice: You can use predefined [Constants](../../guides/appendix/Constants.md).

To set all properties you can use the command [hmCal_Set App Property](../appointments/hmCal_Set-App-Property.md).
