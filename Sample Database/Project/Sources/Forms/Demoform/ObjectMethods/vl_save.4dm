var $vl_area : Integer

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_area:=OBJECT Get value:C1743("calarea")
	
	saveImage($vl_area; OBJECT Get value:C1743("tt_picttypes"))
	
End if 
