//%attributes = {}
//$1=Von Array
//$2=Nach Array
//{$3=Länge, wenn Zielarray String)

C_POINTER:C301($vp_source; $vp_target)
C_LONGINT:C283($i; $vl_size; $vl_typ1; $vl_typ2; $vl_length)

$vp_source:=$1
$vp_target:=$2

$vl_size:=Size of array:C274($vp_source->)

ARR_Resize($vp_target; $vl_size)

$vl_typ1:=Type:C295($vp_source->)
$vl_typ2:=Type:C295($vp_target->)

Case of 
	: ($vl_typ1=Text array:K8:16) & ($vl_typ2=String array:K8:15)
		
		If (Count parameters:C259>2)
			$vl_length:=$3
		Else 
			$vl_length:=80
		End if 
		
		For ($i; 1; $vl_size)
			$vp_target->{$i}:=Substring:C12($vp_source->{$i}; 1; $vl_length)
		End for 
		
	: ($vl_typ1=Text array:K8:16) & ($vl_typ2=Text array:K8:16)  //seit v11
		
		For ($i; 1; $vl_size)
			$vp_target->{$i}:=$vp_source->{$i}
		End for 
		
	: (($vl_typ1=LongInt array:K8:19) | ($vl_typ1=Integer array:K8:18) | ($vl_typ1=Real array:K8:17)) & (($vl_typ2=LongInt array:K8:19) | ($vl_typ2=Integer array:K8:18) | ($vl_typ2=Real array:K8:17))
		
		For ($i; 1; $vl_size)
			$vp_target->{$i}:=$vp_source->{$i}
		End for 
		
	: ($vl_typ1=Text array:K8:16) & (($vl_typ2=LongInt array:K8:19) | ($vl_typ2=Integer array:K8:18) | ($vl_typ2=Real array:K8:17))
		
		For ($i; 1; $vl_size)
			$vp_target->{$i}:=Num:C11($vp_source->{$i})
		End for 
		
	: (($vl_typ1=LongInt array:K8:19) | ($vl_typ1=Integer array:K8:18) | ($vl_typ1=Real array:K8:17)) & ($vl_typ2=Text array:K8:16)
		
		For ($i; 1; $vl_size)
			$vp_target->{$i}:=String:C10($vp_source->{$i})
		End for 
		
	: ($vl_typ1=Boolean array:K8:21) & ($vl_typ2=Boolean array:K8:21)
		
		For ($i; 1; $vl_size)
			$vp_target->{$i}:=$vp_source->{$i}
		End for 
		
	: ($vl_typ1=Date array:K8:20) & ($vl_typ2=Date array:K8:20)
		
		For ($i; 1; $vl_size)
			$vp_target->{$i}:=$vp_source->{$i}
		End for 
		
	: ($vl_typ1=Picture array:K8:22) & ($vl_typ2=Picture array:K8:22)
		
		For ($i; 1; $vl_size)
			$vp_target->{$i}:=$vp_source->{$i}
		End for 
		
End case 
