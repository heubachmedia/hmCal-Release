//%attributes = {}
var $vl_area; $vl_miniarea : Integer

$vl_area:=OBJECT Get value:C1743("calarea")
$vl_miniarea:=OBJECT Get value:C1743("calmini")

hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_OneLineCaption; OBJECT Get value:C1743("vl_onelineheader"))
hmCal_START ON MONDAY($vl_area; OBJECT Get value:C1743("vl_startonmonday"))
hmCal_mini_START ON MONDAY($vl_miniarea; OBJECT Get value:C1743("vl_startonmonday"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_MultiDayArea; OBJECT Get value:C1743("vl_viewmultidayarea"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_AllowDragNew; OBJECT Get value:C1743("vl_allowdragnew"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_Overlapping; OBJECT Get value:C1743("vl_overlapping"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_ScrollAutoHide; OBJECT Get value:C1743("vl_ScrollAutoHide"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_DisplayTime; OBJECT Get value:C1743("vl_displaytime"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_FreezeView_V; OBJECT Get value:C1743("vl_FreezeView_V"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_ShowMonthHeader; OBJECT Get value:C1743("vl_ShowMonthHeader"))
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_IndicateOutsideApp; OBJECT Get value:C1743("vl_IndicateOutsideApp"))
