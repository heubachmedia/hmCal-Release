If (Form event code:C388=On Data Change:K2:15)
	
	OBJECT_SetReal("vz_margin_bottom_tab"; OBJECT_GetReal("vz_margin_bottom"))
	Appointments_ApplyProperties
	
End if 
