//%attributes = {}
C_TEXT:C284($vt_object)
C_LONGINT:C283($vl_value)
C_POINTER:C301($vp_object)

$vt_object:=$1
$vl_value:=$2

$vp_object:=OBJECT Get pointer:C1124(Object named:K67:5; $vt_object)

If (Not:C34(Is nil pointer:C315($vp_object)))
	
	$vp_object->:=$vl_value
	
Else 
	
	If (Not:C34(Is compiled mode:C492))
		
		TRACE:C157
		
	End if 
	
End if 
