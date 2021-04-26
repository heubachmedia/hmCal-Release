C_DATE:C307($vd_date)
C_LONGINT:C283($vl_miniarea)

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_miniarea:=OBJECT_GetLongint("calmini")
	
	$vd_date:=hmCal_mini_Get Start Date($vl_miniarea)
	$vd_date:=Add to date:C393($vd_date; 0; 1; 0)
	hmCal_mini_SET START DATE($vl_miniarea; $vd_date)
	
End if 
