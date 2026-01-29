var $vl_area : Integer

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_area:=OBJECT Get value:C1743("calarea")
	hmCal_SET VIEW($vl_area; hmCal_ResourcesView)
	
End if 
