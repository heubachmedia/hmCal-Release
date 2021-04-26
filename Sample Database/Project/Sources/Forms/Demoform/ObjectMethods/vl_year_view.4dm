C_LONGINT:C283($vl_area)

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_area:=OBJECT_GetLongint("calarea")
	hmCal_SET VIEW($vl_area; hmCal_YearView)
	
End if 
