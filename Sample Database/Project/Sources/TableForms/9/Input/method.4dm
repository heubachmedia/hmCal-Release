If (Form event code:C388=On Load:K2:1)
	If (Is new record:C668([Users:9]))
		[Users:9]ID:1:=Sequence number:C244([Users:9])
	End if 
End if 
