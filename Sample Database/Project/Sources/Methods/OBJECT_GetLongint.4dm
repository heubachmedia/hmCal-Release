//%attributes = {}
C_TEXT:C284($vt_object)
C_LONGINT:C283($vl_value)
C_POINTER:C301($vp_object)

$vt_object:=$1

$vp_object:=OBJECT Get pointer:C1124(Object named:K67:5; $vt_object)

If (Not:C34(Is nil pointer:C315($vp_object)))
	
	If (Count parameters:C259>1)
		$vl_value:=$vp_object->{$2}
	Else 
		$vl_value:=$vp_object->
	End if 
	
Else 
	$vl_value:=0
End if 

$0:=$vl_value
