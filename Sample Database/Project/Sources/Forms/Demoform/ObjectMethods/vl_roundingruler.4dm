var $vl_area; $vl_roundingvalue : Integer

If (Form event code:C388=On Clicked:K2:4) | (Form event code:C388=On Data Change:K2:15)
	
	$vl_area:=OBJECT Get value:C1743("calarea")
	$vl_roundingvalue:=OBJECT Get value:C1743("vl_roundingruler")
	
	hmCal_SET ROUNDING VALUE($vl_area; $vl_roundingvalue)
	
End if 
