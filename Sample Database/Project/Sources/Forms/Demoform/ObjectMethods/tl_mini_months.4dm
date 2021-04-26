C_POINTER:C301($vp_object)
C_LONGINT:C283($vl_miniarea; $vl_index)

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_miniarea:=OBJECT_GetLongint("calmini")
	
	$vp_object:=OBJECT_GetPointer("tl_mini_months")
	
	$vl_index:=$vp_object->
	hmCal_mini_SET MONTHS($vl_miniarea; $vp_object->{$vl_index})
	
End if 
