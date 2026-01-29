If (Form event code:C388=On Data Change:K2:15)
	
	OBJECT SET VALUE:C1742("vz_linespacing_header_tab"; OBJECT Get value:C1743("vz_linespacing_header"))
	Appointments_ApplyProperties
	
End if 
