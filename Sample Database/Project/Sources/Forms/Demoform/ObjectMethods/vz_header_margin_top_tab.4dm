If (Form event code:C388=On Clicked:K2:4)
	
	OBJECT_SetReal("vz_header_margin_top"; OBJECT_GetReal("vz_header_margin_top_tab"))
	Appointments_ApplyProperties
	
End if 
