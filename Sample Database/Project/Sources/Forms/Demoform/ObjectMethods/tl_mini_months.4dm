var $vp_object : Pointer
var $vl_miniarea; $vl_index : Integer

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_miniarea:=OBJECT Get value:C1743("calmini")
	
	$vp_object:=OBJECT_GetPointer("tl_mini_months")
	
	$vl_index:=$vp_object->
	hmCal_mini_SET MONTHS($vl_miniarea; $vp_object->{$vl_index})
	
End if 
