var $vd_date : Date
var $vl_area; $vl_miniarea : Integer

If (Form event code:C388=On Plug in Area:K2:16)
	
	$vl_area:=OBJECT Get value:C1743("calarea")
	$vl_miniarea:=OBJECT Get value:C1743("calmini")
	
	$vd_date:=hmCal_mini_Get Date($vl_miniarea)
	
	hmCal_SET START DATE($vl_area; $vd_date)
	
	hmCal_DELETE ALL SPECIAL DAYS($vl_area)
	
End if 
