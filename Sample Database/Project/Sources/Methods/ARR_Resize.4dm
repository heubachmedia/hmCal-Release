//%attributes = {"preemptive":"capable"}
#DECLARE($vp_arrayptr : Pointer; $vl_destsize : Integer)

var $vl_currarraysize : Integer

$vl_currarraysize:=Size of array:C274($vp_arrayptr->)

Case of 
	: ($vl_destsize>$vl_currarraysize)
		INSERT IN ARRAY:C227($vp_arrayptr->; $vl_currarraysize+1; $vl_destsize-$vl_currarraysize)
		
	: ($vl_destsize<$vl_currarraysize)
		DELETE FROM ARRAY:C228($vp_arrayptr->; $vl_destsize+1; $vl_currarraysize-$vl_destsize)
		
	: ($vl_destsize=$vl_currarraysize)
		//do nothing
		
	Else 
		//do nothing
		
End case 
