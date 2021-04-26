//%attributes = {}
C_LONGINT:C283($vl_version; $vl_majorrversion; $vl_minorversion; $vl_revision)

$vl_version:=hmCal_Get Version
$vl_majorrversion:=($vl_version & 0xFF00) >> 12
$vl_majorrversion:=($vl_majorrversion*10)+(($vl_version & 0x0F00) >> 8)
$vl_minorversion:=($vl_version & 0x00F0) >> 4
$vl_revision:=$vl_version & 0x000F

$0:=String:C10($vl_majorrversion)+"."+String:C10($vl_minorversion)+"."+String:C10($vl_revision)
