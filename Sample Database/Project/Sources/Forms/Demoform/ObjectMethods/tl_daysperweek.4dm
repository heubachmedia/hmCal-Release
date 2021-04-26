C_LONGINT:C283($vl_area; $vl_index)
C_POINTER:C301($vp_object)

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_area:=OBJECT_GetLongint("calarea")
	$vp_object:=OBJECT_GetPointer("tl_daysperweek")
	
	$vl_index:=$vp_object->
	
	hmCal_SET DAY RANGE($vl_area; $vp_object->{$vl_index})
	
End if 
