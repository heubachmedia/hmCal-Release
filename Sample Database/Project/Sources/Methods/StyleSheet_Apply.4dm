//%attributes = {}
C_LONGINT:C283($i; $vl_area)
C_POINTER:C301($vp_stylesheet_name; $vp_stylesheet_type)

$vl_area:=$1

$vp_stylesheet_name:=OBJECT_GetPointer("tt_stylesheet_name")
$vp_stylesheet_type:=OBJECT_GetPointer("tg_stylesheet_type")

For ($i; 1; Size of array:C274($vp_stylesheet_name->))
	ErrorHandler(hmCal_Apply Stylesheet Ex($vl_area; $i; $vp_stylesheet_type->{$i}; 0; 0))
End for 
