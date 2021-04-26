//%attributes = {}
C_TEXT:C284($vt_object)
C_TEXT:C284($vt_value)
C_POINTER:C301($vp_object)

$vt_object:=$1
$vt_value:=$2

$vp_object:=OBJECT Get pointer:C1124(Object named:K67:5; $vt_object)

If (Not:C34(Is nil pointer:C315($vp_object)))
	$vp_object->:=$vt_value
Else 
	TRACE:C157
End if 
