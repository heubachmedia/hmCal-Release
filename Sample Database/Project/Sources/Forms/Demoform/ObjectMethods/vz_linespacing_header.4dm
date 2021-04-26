If (Form event code:C388=On Data Change:K2:15)
	
	OBJECT_SetReal("vz_linespacing_header_tab"; OBJECT_GetReal("vz_linespacing_header"))
	Appointments_ApplyProperties
	
End if 
