C_DATE:C307($vd_date)
C_LONGINT:C283($vl_area; $vl_miniarea)

If (Form event code:C388=On Plug in Area:K2:16)
	
	$vl_area:=OBJECT_GetLongint("calarea")
	$vl_miniarea:=OBJECT_GetLongint("calmini")
	
	$vd_date:=hmCal_mini_Get Date($vl_miniarea)
	
	hmCal_SET START DATE($vl_area; $vd_date)
	
	hmCal_DELETE ALL SPECIAL DAYS($vl_area)
	
End if 
