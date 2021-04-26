If (Form event code:C388=On Clicked:K2:4)
	
	OBJECT_SetReal("vz_linespacing"; OBJECT_GetReal("vz_linespacing_tab"))
	Appointments_ApplyProperties
	
End if 
