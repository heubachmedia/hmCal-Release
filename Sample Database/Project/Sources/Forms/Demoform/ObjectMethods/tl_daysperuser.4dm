C_POINTER:C301($vp_object)
C_LONGINT:C283($vl_area; $vl_index)

If (Form event code:C388=On Clicked:K2:4)
	
	$vp_object:=OBJECT_GetPointer("tl_daysperuser")
	$vl_area:=OBJECT_GetLongint("calarea")
	
	$vl_index:=$vp_object->
	
	hmCal_SET DAYS PER USER($vl_area; $vp_object->{$vl_index})
	
End if 
