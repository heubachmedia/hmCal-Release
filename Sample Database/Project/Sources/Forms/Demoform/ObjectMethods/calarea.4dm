C_LONGINT:C283($vl_event; $vl_ziel; $vl_zeit; $vl_userid; $vl_area; $vl_miniarea)
C_DATE:C307($vd_datum)

If (Form event code:C388=On Plug in Area:K2:16)
	
	$vl_area:=OBJECT_GetLongint("calarea")
	$vl_miniarea:=OBJECT_GetLongint("calmini")
	
	$vl_event:=hmCal_Get Last Event($vl_area)
	
	Case of 
		: ($vl_event=On Clicked:K2:4)
			$vl_ziel:=0
			$vd_datum:=!00-00-00!
			$vl_zeit:=0
			$vl_userid:=0
			hmCal_GET LAST DESTINATION($vl_area; $vl_ziel; $vd_datum; $vl_zeit; $vl_userid)
			
			If ($vl_ziel=1)  //Header
				
				If ($vd_datum#!00-00-00!)
					
					hmCal_DELETE ALL SPECIAL DAYS($vl_area)
					hmCal_ADD SPECIAL DAY($vl_area; $vd_datum; -1; -1; -1)
					
					hmCal_mini_SET DATE($vl_miniarea; $vd_datum)
					
				End if 
				
			End if 
			
		: ($vl_event=On Double Clicked:K2:5)
			
	End case 
	
End if 
