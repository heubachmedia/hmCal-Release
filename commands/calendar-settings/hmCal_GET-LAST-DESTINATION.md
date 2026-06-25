[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_GET LAST DESTINATION

`hmCal_GET LAST DESTINATION(area;target;date;time;user)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| target | Longint | <- | target |
| date | Datum | <- | click date |
| time | Longint | <- | click time |
| user | Longint | <- | user id |

## Contents

- [1 Description](#nummer_00001)  [2 Example](#nummer_00005)
  - [1.1 target](#nummer_00002)
  - [1.2 date and time](#nummer_00003)
  - [1.3 user id](#nummer_00004)

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET LAST DESTINATION*** returns information about the last click oder doubleclick. You can use this command in the object method of the calendar.

<a id="nummer_00002"></a>

### target

- 1 = click in the header area
- 2 = click in the full day area
- 3 = click in the calendar area
- 4 = click on vertical scrollbar
- 5 = click on horizontal scrollbar
- 6 = click on the splitter in the user multi day view
- 7 = click on the horizontal scrollbar of the column area
- 8 = click in the list area (columns)
- 9 = click on the splitter of the multi-day-area
- 10 = click on the vertical scrollbar on the multi-day-area
- 11 = click on the more-info icon in the month view
- 12 = click on the time indicator
- -1 = click under the bottom of the hmCal area
- -2 = click over the top of the hmCal area
- -3 = click left from the hmCal area
- -4 = click right from the hmCal area

<a id="nummer_00003"></a>

### date and time

Returns the date and time of the last click. If the last click was outside the calendar area an empty date and time will be returned.

<a id="nummer_00004"></a>

### user id

Returns the user id of the last click.

<a id="nummer_00005"></a>

## Example

The following example requests several information about the last click:

```4d
C_LONGINT($vl_event;$vl_ziel;$vl_zeit;$vl_userid)
C_DATE($vd_datum)

If (Form event=On Plug in Area )

 $vl_event:=hmCal_Get Last Event (calarea)

 if($vl_event=On Clicked )
  
  $vl_ziel:=0
  $vd_datum:=!00.00.00!
  $vl_zeit:=0
  $vl_userid:=0
  hmCal_GET LAST DESTINATION (calarea;$vl_ziel;$vd_datum;$vl_zeit;$vl_userid)
	
 End if

End if 
```
