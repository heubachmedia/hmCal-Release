var $vp_object : Pointer
var $vl_area; $vl_index : Integer

If (Form event code:C388=On Clicked:K2:4)
	
	$vp_object:=OBJECT_GetPointer("tl_daysperuser")
	$vl_area:=OBJECT Get value:C1743("calarea")
	
	$vl_index:=$vp_object->
	
	hmCal_SET DAYS PER USER($vl_area; $vp_object->{$vl_index})
	
End if 
