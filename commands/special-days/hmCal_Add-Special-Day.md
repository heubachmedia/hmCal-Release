[Special days](../../guides/category-pages/special-days.md)

# hmCal_Add Special Day

`hmCal_Add Special Day(area;date;red;green;blue) -> reference`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| date | Date | -> | date |
| red | Longint | -> | red color |
| green | Longint | -> | green color |
| blue | Longint | -> | blue color |
| reference | Longint | <- | reference |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Add Special Day*** marks one day in the indicated color, defined by the color components *red*, *green* and *blue*. The standard-color will be used if you pass *-1* in the parameters *red*, *green* and *blue*. If you pass an existing special day, the color information of this day will be overwritten. All color components are 16 bit values. The function returns an unique identifier. This id is used e. g. to set specific properties [hmCal_SET COLOR](../calendar-settings/hmCal_SET-COLOR.md).

With this command, you can mark multiple days. Delete all marked days with the command [hmCal_DELETE ALL SPECIAL DAYS](hmCal_DELETE-ALL-SPECIAL-DAYS.md).

Note: contrary to the command [hmCal_HIGHLIGHT DAY](hmCal_HIGHLIGHT-DAY.md) you can mark several days at the same time.

<a id="nummer_00002"></a>

## Example

The following marks the current date in the calendar:

```4d
C_LONGINT($vl_reference)

$vl_reference:=hmCal_Add Special Day(hmCal;Current Date;-1;-1;-1)
```
