//%attributes = {}
C_LONGINT:C283($vl_area; $vl_error)

$vl_area:=OBJECT_GetLongint("calarea")

$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Header_Linespacing; OBJECT_GetReal("vz_linespacing_header"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Header_Margin_top; OBJECT_GetReal("vz_header_margin_top"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Header_Margin_left; OBJECT_GetReal("vz_header_margin_left"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Header_Margin_right; OBJECT_GetReal("vz_margin_header_right"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Header_Margin_bottom; OBJECT_GetReal("vz_margin_header_bottom"); ""; !00-00-00!)

$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Descr_Linespacing; OBJECT_GetReal("vz_linespacing"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Descr_Margin_left; OBJECT_GetReal("vz_margin_left"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Descr_Margin_top; OBJECT_GetReal("vz_margin_top"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Descr_Margin_right; OBJECT_GetReal("vz_margin_right"); ""; !00-00-00!)
$vl_error:=hmCal_Set App Property($vl_area; 0; hmCal_aprop_Descr_Margin_bottom; OBJECT_GetReal("vz_margin_bottom"); ""; !00-00-00!)
