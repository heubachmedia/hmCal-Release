C_LONGINT:C283($vl_error; $vl_effect; $vl_area)
C_POINTER:C301($vp_object)

If (Form event code:C388=On Clicked:K2:4)
	
	$vp_object:=OBJECT_GetPointer("tt_effect")
	
	$vl_effect:=$vp_object->-1
	
	$vl_area:=OBJECT_GetLongint("calarea")
	
	$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Effect; $vl_effect; ""; !00-00-00!)
	hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_DefaultEffect; $vl_effect)
	
End if 
