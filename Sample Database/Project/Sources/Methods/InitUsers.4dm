//%attributes = {}
C_LONGINT:C283($i; $vl_area; $vl_error)

$vl_area:=$1

ALL RECORDS:C47([Users:9])

ARRAY LONGINT:C221($tl_id; 0)
ARRAY TEXT:C222($tt_name; 0)

SELECTION TO ARRAY:C260([Users:9]ID:1; $tl_id; [Users:9]Name:2; $tt_name)

For ($i; 1; Size of array:C274($tl_id))
	$vl_error:=hmCal_Add User($vl_area; $tl_id{$i}; $tt_name{$i})
End for 
