//%attributes = {}
C_TEXT:C284($vt_object)
C_POINTER:C301($vp_object)
C_LONGINT:C283($vl_typ)

$vt_object:=$1
$vl_typ:=$2

$vp_object:=OBJECT Get pointer:C1124(Object named:K67:5; $vt_object)

If (Not:C34(Is nil pointer:C315($vp_object)))
	
	//%W-518.5
	
	Case of 
		: ($vl_typ=Text array:K8:16) | ($vl_typ=Is text:K8:3) | ($vl_typ=Is alpha field:K8:1)
			ARRAY TEXT:C222($vp_object->; 0)
			
		: ($vl_typ=LongInt array:K8:19) | ($vl_typ=Is longint:K8:6) | ($vl_typ=Is time:K8:8)
			ARRAY LONGINT:C221($vp_object->; 0)
			
		: ($vl_typ=Integer array:K8:18) | ($vl_typ=Is integer:K8:5)
			ARRAY INTEGER:C220($vp_object->; 0)
			
		: ($vl_typ=Real array:K8:17) | ($vl_typ=Is real:K8:4)
			ARRAY REAL:C219($vp_object->; 0)
			
		: ($vl_typ=Date array:K8:20) | ($vl_typ=Is date:K8:7)
			ARRAY DATE:C224($vp_object->; 0)
			
		: ($vl_typ=Boolean array:K8:21) | ($vl_typ=Is boolean:K8:9)
			ARRAY BOOLEAN:C223($vp_object->; 0)
			
		: ($vl_typ=Picture array:K8:22) | ($vl_typ=Is picture:K8:10)
			ARRAY PICTURE:C279($vp_object->; 0)
			
	End case 
	
	//%W+518.5
	
Else 
	
	If (Not:C34(Is compiled mode:C492))
		TRACE:C157
	End if 
	
End if 

$0:=$vp_object
