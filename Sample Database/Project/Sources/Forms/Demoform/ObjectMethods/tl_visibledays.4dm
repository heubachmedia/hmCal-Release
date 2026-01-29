var $vl_area; $vl_index : Integer
var $vp_object : Pointer

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_area:=OBJECT Get value:C1743("calarea")
	$vp_object:=OBJECT_GetPointer("tl_visibledays")
	
	$vl_index:=$vp_object->
	
	hmCal_SET VISIBLE DAYS($vl_area; $vp_object->{$vl_index})
	
End if 
