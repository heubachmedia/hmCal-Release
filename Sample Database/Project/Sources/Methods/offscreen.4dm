//%attributes = {}
C_LONGINT:C283($vl_area; $vl_error)
C_PICTURE:C286($vb_picture)

$vl_area:=hmCal_New Offscreen Area(700; 500)
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_DefaultEffect; 1)

$vl_error:=hmCal_Add Appointment($vl_area; 1; "Appointment User1"; "A User1"; 0; Current date:C33; ?10:00:00?+0; Current date:C33; ?13:00:00?+0; 1)

$vb_picture:=hmCal_Area To Picture($vl_area; 1; 0; 0)
SET PICTURE TO PASTEBOARD:C521($vb_picture)

hmCal_DELETE OFFSCREEN AREA($vl_area)
