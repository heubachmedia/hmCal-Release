If (Form event code:C388=On Data Change:K2:15)
	
	OBJECT SET VALUE:C1742("vz_margin_header_right_Tab"; OBJECT Get value:C1743("vz_margin_header_right"))
	Appointments_ApplyProperties
	
End if 
