[Working Hours](../../guides/category-pages/working-hours.md)

# hmCal_Create Working Hours

`hmCal_Create Working Hours(area;timeFrom;timeTo;Date;User;red;green;blue;alpha;text) -> reference`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| timeFrom | Longint | -> | from-value |
| timeTo | Longint | -> | to-value |
| Date | Date | -> | date-value |
| User | Longint | -> | user-ID |
| red | Longint | -> | color component red |
| green | Longint | -> | color component green |
| blue | Longint | -> | color component blue |
| alpha | Real | -> | alpha channel 0-100 |
| text | Text | -> | name of the working hour |
| reference | Longint | <- | reference |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Create Working Hours*** creates a new working hours-record for a day and a user.

The parameter *timeFrom* sets the start of the working time in seconds. The parameter *timeTo* sets the end of the working time in seconds. The parameter *Date* indicates, for what day the working hours are to apply. If the value is a blank date (zero date), the working hours applies for all days. The parameter *User* indicates, for what user working hours to apply. If the value*0*, the working hours applies for all users. The parameters *red*, *green* and *blue* definies the color of the working hours. If you pass *-1* in each element, the standardcolor will be shown. *alpha* sets the alpha channel of the color.

For a displayable label for the working hours use the parameter *text*. This parameter can be empty.

All color components are 16 bit values.

> Notice: You can define more than one working hour per day if you call this command again.

<a id="nummer_00002"></a>

## Example

The following example sets the working time for the user with the ID 2 to 8:00 to 18:00:

```4d
C_LONGINT($vl_reference)

$vl_reference:=hmCal_Create Working Hours (calArea;0+?08:00:00?;0+?18:00:00?;Current date;2;0xFFFF;0x0000;0x0000;100;"My working hour")		
```
