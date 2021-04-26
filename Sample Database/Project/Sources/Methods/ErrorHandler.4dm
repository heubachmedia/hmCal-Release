//%attributes = {}
C_LONGINT:C283($vl_Error)

$vl_Error:=$1

Case of 
	: ($vl_Error=0)
		
	: ($vl_Error=-1)
		ALERT:C41("Handle error")
		TRACE:C157
		
	: ($vl_Error=-2)
		ALERT:C41("Appointment not found")
		TRACE:C157
		
	: ($vl_Error=-3)
		ALERT:C41("User not found")
		TRACE:C157
		
	: ($vl_Error=-4)
		ALERT:C41("Appointment already existis")
		TRACE:C157
		
	: ($vl_Error=-5)
		ALERT:C41("Stylesheet already existis")
		TRACE:C157
		
	: ($vl_Error=-6)
		ALERT:C41("Stylesheet not found")
		TRACE:C157
		
	: ($vl_Error=-7)
		ALERT:C41("Creation not possible")
		TRACE:C157
		
	Else 
		ALERT:C41("undefined error")
		TRACE:C157
		
End case 
