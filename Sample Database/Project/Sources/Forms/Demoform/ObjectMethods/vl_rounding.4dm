C_LONGINT:C283($vl_area; $vl_rounding)

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_area:=OBJECT_GetLongint("calarea")
	$vl_rounding:=OBJECT_GetLongint("vl_rounding")
	
	hmCal_SET ROUNDING($vl_area; $vl_rounding)
	
	OBJECT SET ENABLED:C1123(*; "vl_roundingruler"; $vl_rounding=1)
	
End if 
