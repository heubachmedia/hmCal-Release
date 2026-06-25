[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET COLOR EX

`hmCal_SET COLOR EX(area;type1;type2;type3;red;green;blue)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| type1 | Longint | -> | object type |
| type2 | Longint | -> | reference or 0 |
| type3 | Longint | -> | reference or 0 |
| red | Longint | -> | red color component |
| green | Longint | -> | green color component |
| blue | Longint | -> | blue color component |

*Notice: This command is obsolete in version 7.0. Please use [hmCal_SET COLOR NEW](hmCal_SET-COLOR-NEW.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET COLOR EX*** is identically with the command [hmCal_SET COLOR](hmCal_SET-COLOR.md). Some selectors needs a further type parameter *type3*.
