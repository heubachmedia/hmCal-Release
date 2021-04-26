//%attributes = {}
C_LONGINT:C283($i; $vl_area; $vl_error)
C_DATE:C307($vd_date1; $vd_date2)

$vl_area:=$1
$vd_date1:=$2
$vd_date2:=$3

QUERY:C277([Appointments:8]; [Appointments:8]Date1:4<=$vd_date2; *)
QUERY:C277([Appointments:8];  & ; [Appointments:8]Date2:6>=$vd_date1)

ORDER BY:C49([Appointments:8]; [Appointments:8]ID:1; >)

ARRAY LONGINT:C221($tl_ID; 0)
ARRAY TEXT:C222($tt_subject; 0)
ARRAY TEXT:C222($tt_body; 0)
ARRAY DATE:C224($td_date1; 0)
ARRAY LONGINT:C221($tl_time1; 0)
ARRAY DATE:C224($td_date2; 0)
ARRAY LONGINT:C221($tl_time2; 0)
ARRAY BOOLEAN:C223($tf_allday; 0)
ARRAY LONGINT:C221($tl_userID; 0)
ARRAY TEXT:C222($tt_tip; 0)
ARRAY BOOLEAN:C223($tf_reminderIcon; 0)
ARRAY BOOLEAN:C223($tf_locked; 0)

SELECTION TO ARRAY:C260([Appointments:8]ID:1; $tl_ID; [Appointments:8]Subject:2; $tt_subject; [Appointments:8]Body:3; $tt_body; [Appointments:8]Date1:4; $td_date1; [Appointments:8]Time1:5; $tl_time1; [Appointments:8]Date2:6; $td_date2; [Appointments:8]Time2:7; $tl_time2; [Appointments:8]AllDay:9; $tf_allday; [Appointments:8]UserID:10; $tl_userID; [Appointments:8]Tiptext:8; $tt_tip; [Appointments:8]Reminder:11; $tf_reminderIcon; [Appointments:8]Lock:12; $tf_locked)

For ($i; 1; Size of array:C274($tl_ID))
	
	$vl_error:=hmCal_Add Appointment($vl_area; $tl_ID{$i}; $tt_subject{$i}; $tt_body{$i}; Num:C11($tf_allday{$i}); $td_date1{$i}; $tl_time1{$i}; $td_date2{$i}; $tl_time2{$i}; $tl_userID{$i})
	
	If ($tt_tip{$i}#"")
		$vl_error:=hmCal_Set App Property($vl_area; $tl_ID{$i}; hmCal_aprop_Tiptext; 0; $tt_tip{$i}; !00-00-00!)
	End if 
	
	If ($tf_reminderIcon{$i})
		$vl_error:=hmCal_Set App Property($vl_area; $tl_ID{$i}; hmCal_aprop_Icon; -1; ""; !00-00-00!)
	End if 
	
	If ($tf_locked{$i})
		$vl_error:=hmCal_Set App Property($vl_area; $tl_ID{$i}; hmCal_aprop_Lock; 1; ""; !00-00-00!)
	End if 
	
End for 
