[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_GET LAST DEST

`hmCal_mini_GET LAST DEST(area;target;date;value1;value2)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| target | Longint | <- | target |
| date | Datum | <- | click date |
| value1 | Longint | <- | value 1 |
| value2 | Longint | <- | value 2 |

## Contents

- [1 Description](#nummer_00001)  [2 Example](#nummer_00003)
  - [1.1 target](#nummer_00002)

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_GET LAST DEST*** returns information about the last click oder doubleclick. You can use this command in the object method of the mini-calendar.

<a id="nummer_00002"></a>

### target

- 0 = click in an other area
- 1 = click on a day. The day is returned in *date*
- 2 = click on a week number. *value1* returns the week number, *value2* returns the year.
- 3 = click on the month header. *value1* returns the month, *value2* returns the year.

<a id="nummer_00003"></a>

## Example

The following example requests several information about the last click within the mini-calendar:

```4d
C_DATE($vd_date)
C_LONGINT($vl_target;$vl_value1;$vl_value2)

If (Form event=On Plug in Area)

$vd_date:=hmCal_mini_Get Date (calmini)

hmCal_SET START DATE (calarea;$vd_date)

hmCal_DELETE ALL SPECIAL DAYS (calArea)
hmCal_ADD SPECIAL DAY (calArea;$vd_date;-1;-1;-1)

$vl_target:=0
$vd_date:=!00.00.0000!
$vl_value1:=0
$vl_value2:=0

hmCal_mini_GET LAST DEST (calmini;$vl_target;$vd_date;$vl_value1;$vl_value2)

End if 
```
