//%attributes = {}
C_TEXT:C284($vt_object)
C_POINTER:C301($vp_object)

$vt_object:=$1

$vp_object:=OBJECT Get pointer:C1124(Object named:K67:5; $vt_object)

If (Is nil pointer:C315($vp_object))
	
	TRACE:C157
	
End if 

$0:=$vp_object
