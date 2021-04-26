//%attributes = {}
C_LONGINT:C283($vl_area; $vl_format; $vl_index)
C_TEXT:C284($vt_folder; $vt_resfolder)
C_POINTER:C301($vp_tt_picturesize; $vp_tg_picturesize_width; $vp_tg_picturesize_height)
C_PICTURE:C286($vb_picture)

$vl_area:=$1
$vl_format:=$2

$vp_tt_picturesize:=OBJECT_GetPointer("tt_picturesize")
$vp_tg_picturesize_width:=OBJECT_GetPointer("tg_picturesize_width")
$vp_tg_picturesize_height:=OBJECT_GetPointer("tg_picturesize_height")

$vt_resfolder:=Get 4D folder:C485(Current resources folder:K5:16)
$vt_folder:=$vt_resfolder+"hmCal."

If ($vl_format=8)
	$vl_format:=hmCal_picture_dds
End if 

Case of 
	: ($vl_format=hmCal_picture_jpg)
		$vt_folder:=$vt_folder+"jpg"
		
	: ($vl_format=hmCal_picture_png)
		$vt_folder:=$vt_folder+"png"
		
	: ($vl_format=hmCal_picture_bmp)
		$vt_folder:=$vt_folder+"bmp"
		
	: ($vl_format=hmCal_picture_gif)
		$vt_folder:=$vt_folder+"gif"
		
	: ($vl_format=hmCal_picture_tiff)
		$vt_folder:=$vt_folder+"tif"
		
	: ($vl_format=hmCal_picture_pdf)
		$vt_folder:=$vt_folder+"pdf"
		
	: ($vl_format=hmCal_picture_svg)
		$vt_folder:=$vt_folder+"svg"
		
	: ($vl_format=hmCal_picture_dds)
		$vt_folder:=$vt_folder+"dds"
		
End case 

If (Test path name:C476($vt_folder)=Is a document:K24:1)
	DELETE DOCUMENT:C159($vt_folder)
End if 

$vl_index:=$vp_tt_picturesize->

hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_PrintingWidth; $vp_tg_picturesize_width->{$vl_index})
hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_PrintingHeight; $vp_tg_picturesize_height->{$vl_index})

$vb_picture:=hmCal_Area To Picture($vl_area; $vl_format; 0; 0)
WRITE PICTURE FILE:C680($vt_folder; $vb_picture)

SHOW ON DISK:C922($vt_resfolder; *)
