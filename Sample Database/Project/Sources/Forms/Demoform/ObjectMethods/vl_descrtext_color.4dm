C_LONGINT:C283($vl_area; $vl_forecolor; $vl_backcolor; $vl_altbackcolor; $vl_red; $vl_green; $vl_blue; $vl_color)

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_area:=OBJECT_GetLongint("calarea")
	
	$vl_forecolor:=0
	$vl_backcolor:=0
	$vl_altbackcolor:=0
	
	OBJECT GET RGB COLORS:C1074(*; "descrtext_color"; $vl_forecolor; $vl_backcolor; $vl_altbackcolor)
	
	$vl_color:=Select RGB color:C956($vl_backcolor)
	
	If (OK=1)
		
		OBJECT SET RGB COLORS:C628(*; "descrtext_color"; $vl_color; $vl_color)
		
		$vl_red:=(($vl_color & 0x00FF0000) >> 16) << 8
		$vl_green:=(($vl_color & 0xFF00) >> 8) << 8
		$vl_blue:=($vl_color & 0x00FF) << 8
		
		hmCal_SET COLOR($vl_area; hmCal_clr_AppNewDescrtext; 0; $vl_red; $vl_green; $vl_blue)
		hmCal_SET COLOR($vl_area; hmCal_clr_AppDescrtext; 0; $vl_red; $vl_green; $vl_blue)
		
	End if 
	
End if 
