[Working Hours](../../guides/category-pages/working-hours.md)

# hmCal_SET WORKING HOURS EX

`hmCal_SET WORKING HOURS EX(area;arrayFrom;arrayTo;arrayDate;arrayUser;arrayRed;arrayGreen;arrayBlue;arrayAlpha)`

```
Parameter          Type             Description
area               Longint       ->  hmCal area
arrayFrom          Longint Array ->  Array with from-values
arrayTo            Longint Array ->  Array with to-values
arrayDate          Date Array    ->  Array with date-values
arrayUser          Longint Array ->  Array with user-IDs
arrayRed           Longint Array ->  Array with color component red
arrayGreen         Longint Array ->  Array with color component green
arrayBlue          Longint Array ->  Array with color component blue
arrayAlpha         Real Array    ->  Array with alpha channel (0-100)
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET WORKING HOURS EX*** sets the current working hours for certain days and users. Unlike the command [hmCal_SET WORKING HOURS](hmCal_SET-WORKING-HOURS.md) you can set for example different working hours for weekends and holidays. Also every user can be display with several working hours.

All arrays have the same size. If all arrays have a size of *0*, working hours are no longer displayed.

The array *arrayFrom* sets the start of the working time in seconds. The array *arrayTo* sets the end of the working time in seconds. The array *arrayDate* indicates, for what day

working hours are to apply. If the value is a blank date (zero date), the working hours applies for all days. The array *arrayUser* indicates, for what users working hours to apply. If the value*0*, the working hours applies for all users. The arrays *arrayRed*, *arrayGreen* and *arrayBlue* definies the color of the working hours. If you pass *-1* in each element, the standardcolor will be shown.

All color components are 16 bit values.

> Notice: You can define more than one working hour per day.

<a id="nummer_00002"></a>

## Example

The following example sets the working time for the user with the ID 2 to 8:00 to 18:00, for the user with the ID 3 at 10:00 to 16:00 and for all at 12:00-14:00:

```4d
ARRAY LONGINT($tl_timefrom;3)
ARRAY LONGINT($tl_timeto;3)
ARRAY DATE($td_date;3)
ARRAY LONGINT($tl_user;3)
ARRAY LONGINT($tl_red;3)
ARRAY LONGINT($tl_green;3)
ARRAY LONGINT($tl_blue;3)
ARRAY REAL($tz_alpha;3)

$tl_timefrom{1}:=08:00:00+0
$tl_timefrom{2}:=10:00:00+0
$tl_timefrom{3}:=12:00:00+0
```

```4d
$tl_timeto{1}:=18:00:00+0
$tl_timeto{2}:=16:00:00+0
$tl_timeto{3}:=14:00:00+0

$td_date{1}:=Current date
$td_date{2}:=Current date+1
$td_date{3}:=!00.00.00!

$tl_user{1}:=2
$tl_user{2}:=3
$tl_user{3}:=0

$tl_red{1}:=-1
$tl_red{2}:=-1
$tl_red{3}:=-1

$tl_green{1}:=-1
$tl_green{2}:=-1
$tl_green{3}:=-1

$tl_blue{1}:=-1
$tl_blue{2}:=-1
$tl_blue{3}:=-1

$tz_alpha{1}:=100
$tz_alpha{2}:=100
$tz_alpha{3}:=100
```

```4d
hmCal_SET WORKING HOURS EX (hmCal;$tl_timefrom;$tl_timeto;$td_date;$tl_user;$tl_red;$tl_green;$tl_blue;$tz_alpha)
```
