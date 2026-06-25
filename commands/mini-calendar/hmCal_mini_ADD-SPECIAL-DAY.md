[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_ADD SPECIAL DAY

`hmCal_mini_ADD SPECIAL DAY(area;date;red;green;blue)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal-mini area |
| date | Date | -> | date |
| red | Longint | -> | red color |
| green | Longint | -> | green color |
| blue | Longint | -> | blue color |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_ADD SPECIAL DAY*** marks one day in the indicated color, defined by the color components *red*, *green* and *blue*. The standard-color will be used if you pass *-1* in the parameters *red*, *green* and *blue*.

With this command, you can mark multiple days. Delete all marked days with the command [hmCal_mini_DELETE ALL SPECIAL DAYS](hmCal_mini_DELETE-ALL-SPECIAL-DAYS.md).

<a id="nummer_00002"></a>

## Example

The following marks the current date in the calendar:

```4d
hmCal_mini_ADD SPECIAL DAY(hmCalmini;Current Date;-1;-1;-1)
```
