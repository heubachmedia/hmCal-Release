If (Form event code:C388=On Load:K2:1)
	If (Is new record:C668([Appointments:8]))
		[Appointments:8]ID:1:=Sequence number:C244([Appointments:8])
	End if 
End if 
