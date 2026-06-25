[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET COLOR NEW

`hmCal_SET COLOR NEW(area;type1;type2;type3;red;green;blue;alpha)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| type1 | Longint | -> | object type |
| type2 | Longint | -> | reference or 0 |
| type3 | Longint | -> | reference or 0 |
| red | Longint | -> | red color component |
| green | Longint | -> | green color component |
| blue | Longint | -> | blue color component |
| alpha | Real | -> | alpha channel (0-100) |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET COLOR NEW*** is identically with the command [hmCal_SET COLOR EX](hmCal_SET-COLOR-EX.md) but with this command you can pass an alpha channel to each color.
