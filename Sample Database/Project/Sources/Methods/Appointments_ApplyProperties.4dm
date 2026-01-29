//%attributes = {}
var $vl_area; $vl_error : Integer

$vl_area:=OBJECT Get value:C1743("calarea")

$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Header_Linespacing; OBJECT Get value:C1743("vz_linespacing_header"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Header_Margin_top; OBJECT Get value:C1743("vz_header_margin_top"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Header_Margin_left; OBJECT Get value:C1743("vz_header_margin_left"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Header_Margin_right; OBJECT Get value:C1743("vz_margin_header_right"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Header_Margin_bottom; OBJECT Get value:C1743("vz_margin_header_bottom"); ""; !00-00-00!)

$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Descr_Linespacing; OBJECT Get value:C1743("vz_linespacing"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Descr_Margin_left; OBJECT Get value:C1743("vz_margin_left"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Descr_Margin_top; OBJECT Get value:C1743("vz_margin_top"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Descr_Margin_right; OBJECT Get value:C1743("vz_margin_right"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Descr_Margin_bottom; OBJECT Get value:C1743("vz_margin_bottom"); ""; !00-00-00!)
