If (Form event code:C388=On Clicked:K2:4)
	
	OBJECT_SetReal("vz_linespacing_header"; OBJECT_GetReal("vz_linespacing_header_tab"))
	Appointments_ApplyProperties
	
End if 
