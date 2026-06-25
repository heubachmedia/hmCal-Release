[Areas](../../guides/category-pages/areas.md)

# hmCal_GET POINT INFO

`hmCal_GET POINT INFO(area;x;y;date;time;allday;userRef;appRef)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| x | Longint | -> | x-Koordinate |
| y | Longint | -> | y-Koordinate |
| date | Date | <- | date |
| time | Longint | <- | time |
| allday | Longint | <- | allday status |
| userRef | Longint | <- | user reference |
| appRef | Longint | <- | appointment reference |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET POINT INFO*** gets information about a given point. For example, you can get the user or appointment under the current mouse position. You must set the point in the parameters *x* and *y*. The parameters *date* and *time* return the date and time at this point. The parameter *allday* returns *1* if the point is at the allday area or *0* if not. In user views the parameter *userRef* returns the user reference at this point. If an appointment is under the point, the references is returned in the parameter *appRef*.

<a id="nummer_00002"></a>

## Example

The following example is a extraction from a objectmethod of a hmCal area. The event *On Mouse Move* must be activated. The result is shown in the variable *vt_text*:

```4d
Case of 	
 : (Form event=On Mouse Move )

  $vl_mousex:=0
  $vl_mousey:=0
  $vl_mousebutton:=0

  GET MOUSE($vl_mousex;$vl_mousey;$vl_mousebutton)

  $vd_date:=!00.00.00!
  $vl_zeit:=0
  $vl_userid:=0
  $vl_allday:=0
  $vl_appointment:=0

  hmCal_GET POINT INFO (calarea;$vl_mousex;$vl_mousey;$vd_date;$vl_zeit;$vl_allday;$vl_userid;$vl_appointment)

  $vu_time:=00:00:00+$vl_zeit
  vt_text:=String($vd_date)+" "+String($vu_time)+" user: "+String($vl_userid)+" app: "+String($vl_appointment)

End case 
```
