If (Form event code:C388=On Data Change:K2:15)
	
	OBJECT_SetReal("vz_margin_header_right_Tab"; OBJECT_GetReal("vz_margin_header_right"))
	Appointments_ApplyProperties
	
End if 
