C_LONGINT:C283($vl_area)
C_POINTER:C301($vp_object)
C_PICTURE:C286($vb_picture)

If (Form event code:C388=On Clicked:K2:4)
	
	$vp_object:=OBJECT Get pointer:C1124(Object named:K67:5; "calarea")
	$vl_area:=$vp_object->
	
	$vb_picture:=hmCal_Area To Picture($vl_area; 1; 0; 0)
	SET PICTURE TO PASTEBOARD:C521($vb_picture)
	
End if 
