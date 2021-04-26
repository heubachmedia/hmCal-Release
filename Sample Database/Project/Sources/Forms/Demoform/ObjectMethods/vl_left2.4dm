C_LONGINT:C283($vl_area; $vl_view)
C_DATE:C307($vd_date)

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_area:=OBJECT_GetLongint("calarea")
	
	$vd_date:=hmCal_Get Start Date($vl_area)
	$vl_view:=hmCal_Get View($vl_area)
	
	Case of 
		: ($vl_view=1) | ($vl_view=4)
			hmCal_SET START DATE($vl_area; $vd_date-1)
			
		: ($vl_view=2) | ($vl_view=5)
			hmCal_SET START DATE($vl_area; $vd_date-7)
			
		: ($vl_view=3)
			hmCal_SET START DATE($vl_area; $vd_date-30)
			
	End case 
	
End if 
