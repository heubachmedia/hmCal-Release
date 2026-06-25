[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_GET COLOR EX

`hmCal_GET COLOR EX(area;type1;type2;type3;red;green;blue)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| type1 | Longint | -> | object type |
| type2 | Longint | -> | reference or 0 |
| type3 | Longint | -> | reference or 0 |
| red | Longint | -> | red color component |
| green | Longint | -> | green color component |
| blue | Longint | -> | blue color component |

*Notice: This command is obsolete in version 7.0. Please use [hmCal_GET COLOR NEW](hmCal_GET-COLOR-NEW.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET COLOR EX*** is identically with the command [hmCal_GET COLOR](hmCal_GET-COLOR.md). Some selectors needs a further type parameter *type3*.
