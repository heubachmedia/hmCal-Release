var $vd_date : Date
var $vl_miniarea : Integer

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_miniarea:=OBJECT Get value:C1743("calmini")
	
	$vd_date:=hmCal_mini_Get Start Date($vl_miniarea)
	$vd_date:=Add to date:C393($vd_date; 0; -1; 0)
	hmCal_mini_SET START DATE($vl_miniarea; $vd_date)
	
End if 
