//%attributes = {}
var $vl_pos; $vl_pos2 : Integer
var $vp_fontsize; $vp_fonts; $vp_stylesheet_name; $vp_stylesheet_fontname; $vp_stylesheet_fontsize; $vp_stylesheet_fontstyle : Pointer

$vp_stylesheet_name:=OBJECT_GetPointer("tt_stylesheet_name")
$vp_stylesheet_fontname:=OBJECT_GetPointer("tt_stylesheet_fontname")
$vp_stylesheet_fontsize:=OBJECT_GetPointer("tg_stylesheet_fontsize")
$vp_stylesheet_fontstyle:=OBJECT_GetPointer("tg_stylesheet_fontstyle")

$vl_pos:=$vp_stylesheet_name->

If ($vl_pos>0) & ($vl_pos<=Size of array:C274($vp_stylesheet_name->))
	
	$vp_fontsize:=OBJECT_GetPointer("tl_fontsize")
	$vp_fonts:=OBJECT_GetPointer("tt_fonts")
	
	$vp_fontsize->{0}:=$vp_stylesheet_fontsize->{$vl_pos}
	
	$vl_pos2:=Find in array:C230($vp_fonts->; $vp_stylesheet_fontname->{$vl_pos})
	If ($vl_pos2>0)
		$vp_fonts->:=$vl_pos2
	Else 
		$vp_fonts->:=1
		$vp_stylesheet_fontname->{$vl_pos}:=$vp_fonts->{1}
	End if 
	
	OBJECT SET VALUE:C1742("vl_bold"; Num:C11($vp_stylesheet_fontstyle->{$vl_pos} ?? 0))
	OBJECT SET VALUE:C1742("vl_italic"; Num:C11($vp_stylesheet_fontstyle->{$vl_pos} ?? 1))
	OBJECT SET VALUE:C1742("vl_underline"; Num:C11($vp_stylesheet_fontstyle->{$vl_pos} ?? 2))
	OBJECT SET VALUE:C1742("vl_strikethrough"; Num:C11($vp_stylesheet_fontstyle->{$vl_pos} ?? 3))
	
End if 
