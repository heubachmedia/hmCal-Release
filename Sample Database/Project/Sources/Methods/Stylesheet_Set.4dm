//%attributes = {}
var $vl_pos; $vl_area; $vl_bold; $vl_italic; $vl_underline; $vl_index; $vl_strikethrough : Integer
var $vp_fontsize; $vp_fonts; $vp_stylesheet_name; $vp_stylesheet_fontname; $vp_stylesheet_fontsize; $vp_stylesheet_fontstyle : Pointer

$vp_stylesheet_name:=OBJECT_GetPointer("tt_stylesheet_name")
$vp_stylesheet_fontname:=OBJECT_GetPointer("tt_stylesheet_fontname")
$vp_stylesheet_fontsize:=OBJECT_GetPointer("tg_stylesheet_fontsize")
$vp_stylesheet_fontstyle:=OBJECT_GetPointer("tg_stylesheet_fontstyle")

$vl_pos:=$vp_stylesheet_name->

If ($vl_pos>0) & ($vl_pos<=Size of array:C274($vp_stylesheet_name->))
	
	$vl_area:=OBJECT Get value:C1743("calarea")
	$vl_bold:=OBJECT Get value:C1743("vl_bold")
	$vl_italic:=OBJECT Get value:C1743("vl_italic")
	$vl_underline:=OBJECT Get value:C1743("vl_underline")
	$vl_strikethrough:=OBJECT Get value:C1743("vl_strikethrough")
	
	$vp_fontsize:=OBJECT_GetPointer("tl_fontsize")
	$vp_fonts:=OBJECT_GetPointer("tt_fonts")
	
	$vl_index:=$vp_fonts->
	
	$vp_stylesheet_fontsize->{$vl_pos}:=$vp_fontsize->{0}
	$vp_stylesheet_fontname->{$vl_pos}:=$vp_fonts->{$vl_index}
	$vp_stylesheet_fontstyle->{$vl_pos}:=($vl_bold*Bold:K14:2)+($vl_italic*Italic:K14:3)+($vl_underline*Underline:K14:4)+($vl_strikethrough*8)
	
	ErrorHandler(hmCal_Set Stylesheet($vl_area; $vl_pos; $vp_stylesheet_fontname->{$vl_pos}; $vp_stylesheet_fontsize->{$vl_pos}; $vp_stylesheet_fontstyle->{$vl_pos}))
	
End if 
