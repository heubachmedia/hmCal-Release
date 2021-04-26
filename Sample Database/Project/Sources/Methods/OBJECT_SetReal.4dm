//%attributes = {}
C_TEXT:C284($vt_object)
C_REAL:C285($vz_value)
C_POINTER:C301($vp_object)

$vt_object:=$1
$vz_value:=$2

$vp_object:=OBJECT Get pointer:C1124(Object named:K67:5; $vt_object)

If (Not:C34(Is nil pointer:C315($vp_object)))
	
	$vp_object->:=$vz_value
	
Else 
	
	If (Not:C34(Is compiled mode:C492))
		
		TRACE:C157
		
	End if 
	
End if 
