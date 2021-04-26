C_POINTER:C301($vp_tl_hoursperpage)
C_LONGINT:C283($vl_area; $vl_index)

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_area:=OBJECT_GetLongint("calarea")
	
	$vp_tl_hoursperpage:=OBJECT Get pointer:C1124(Object named:K67:5; "tl_hoursperpage")
	$vl_index:=$vp_tl_hoursperpage->
	
	hmCal_SET VISIBLE HOURS($vl_area; $vp_tl_hoursperpage->{$vl_index})
	
End if 
