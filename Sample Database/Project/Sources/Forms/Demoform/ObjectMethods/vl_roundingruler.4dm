C_LONGINT:C283($vl_area; $vl_roundingvalue)

If (Form event code:C388=On Clicked:K2:4) | (Form event code:C388=On Data Change:K2:15)
	
	$vl_area:=OBJECT_GetLongint("calarea")
	$vl_roundingvalue:=OBJECT_GetLongint("vl_roundingruler")
	
	hmCal_SET ROUNDING VALUE($vl_area; $vl_roundingvalue)
	
End if 
