//%attributes = {}
C_LONGINT:C283($vl_area; $vl_miniarea)

$vl_area:=OBJECT_GetLongint("calarea")
$vl_miniarea:=OBJECT_GetLongint("calmini")

hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_OneLineCaption; OBJECT_GetLongint("vl_onelineheader"))
hmCal_START ON MONDAY($vl_area; OBJECT_GetLongint("vl_startonmonday"))
hmCal_mini_START ON MONDAY($vl_miniarea; OBJECT_GetLongint("vl_startonmonday"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_MultiDayArea; OBJECT_GetLongint("vl_viewmultidayarea"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_AllowDragNew; OBJECT_GetLongint("vl_allowdragnew"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_Overlapping; OBJECT_GetLongint("vl_overlapping"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_ScrollAutoHide; OBJECT_GetLongint("vl_ScrollAutoHide"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_DisplayTime; OBJECT_GetLongint("vl_displaytime"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_FreezeView_V; OBJECT_GetLongint("vl_FreezeView_V"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_ShowMonthHeader; OBJECT_GetLongint("vl_ShowMonthHeader"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_IndicateOutsideApp; OBJECT_GetLongint("vl_IndicateOutsideApp"))
