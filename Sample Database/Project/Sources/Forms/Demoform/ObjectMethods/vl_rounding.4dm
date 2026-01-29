var $vl_area; $vl_rounding : Integer

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_area:=OBJECT Get value:C1743("calarea")
	$vl_rounding:=OBJECT Get value:C1743("vl_rounding")
	
	hmCal_SET ROUNDING($vl_area; $vl_rounding)
	
	OBJECT SET ENABLED:C1123(*; "vl_roundingruler"; $vl_rounding=1)
	
End if 
