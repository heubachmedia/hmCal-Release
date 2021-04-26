If (Form event code:C388=On Clicked:K2:4)
	
	OBJECT_SetReal("vz_header_margin_left"; OBJECT_GetReal("vz_header_margin_left_tab"))
	Appointments_ApplyProperties
	
End if 
