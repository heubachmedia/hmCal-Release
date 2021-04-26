//%attributes = {}
C_LONGINT:C283($0; $1; $2; $3; $6; $7; $8; $vl_area; $vl_event; $vl_appointment; $vl_time1; $vl_time2; $vl_return; $vl_table; $vl_field; $vl_arrayindex; $vl_process; $vl_userref; $vl_view; $vl_windowref)
C_DATE:C307($vd_date1; $vd_date2)
C_TIME:C306($vu_time1; $vu_time2)
C_BOOLEAN:C305($vf_ganztag)
C_POINTER:C301($vp_variable; $vp_personen; $vp_listbox; $vp_object)
C_TEXT:C284($vt_varname1; $vt_varname2; $vt_clicktext)

$vl_return:=0

$vl_area:=$1
$vl_event:=$2
$vl_appointment:=$3
$vd_date1:=$4
$vd_date2:=$5
$vl_time1:=$6
$vl_time2:=$7
$vf_ganztag:=$8=1
$vl_userref:=$9

$vu_time1:=?00:00:00?+$vl_time1
$vu_time2:=?00:00:00?+$vl_time2
Case of 
	: ($vl_event=hmCal_UpdateAppointments)
		
		InitAppointments($vl_area; $vd_date1; $vd_date2)
		StyleSheet_Apply($vl_area)
		
	: ($vl_event=hmCal_DragAppointment) | ($vl_event=hmCal_ResizeAppointment)
		
		QUERY:C277([Appointments:8]; [Appointments:8]ID:1=$vl_appointment)
		[Appointments:8]Date1:4:=$vd_date1
		[Appointments:8]Time1:5:=?00:00:00?+$vl_time1
		[Appointments:8]Date2:6:=$vd_date2
		[Appointments:8]Time2:7:=?00:00:00?+$vl_time2
		[Appointments:8]AllDay:9:=$vf_ganztag
		[Appointments:8]UserID:10:=$vl_userref
		SAVE RECORD:C53([Appointments:8])
		
	: ($vl_event=hmCal_NewAppointment)
		
		CREATE RECORD:C68([Appointments:8])
		[Appointments:8]ID:1:=Sequence number:C244([Appointments:8])
		[Appointments:8]Date1:4:=$vd_date1
		[Appointments:8]Time1:5:=?00:00:00?+$vl_time1
		[Appointments:8]Date2:6:=$vd_date2
		[Appointments:8]Time2:7:=?00:00:00?+$vl_time2
		[Appointments:8]AllDay:9:=$vf_ganztag
		[Appointments:8]UserID:10:=$vl_userref
		SAVE RECORD:C53([Appointments:8])
		
		$vl_windowref:=Open window:C153(200; 100; 800; 700; Plain window:K34:13)
		MODIFY RECORD:C57([Appointments:8]; *)
		
		If (OK=1)
			hmCal_UPDATE APPOINTMENTS($vl_area)
		Else 
			DELETE RECORD:C58([Appointments:8])
		End if 
		
		$vl_return:=-1
		
	: ($vl_event=hmCal_DeleteAppointment)
		
		CONFIRM:C162("Sure?")
		
		If (OK=1)
			QUERY:C277([Appointments:8]; [Appointments:8]ID:1=$vl_appointment)
			DELETE RECORD:C58([Appointments:8])
		Else 
			$vl_return:=-1
		End if 
		
	: ($vl_event=hmCal_DoubleClickApp)
		
		QUERY:C277([Appointments:8]; [Appointments:8]ID:1=$vl_appointment)
		//$vl_windowref:=Open form window([Appointments];"Input";Plain window)
		MODIFY RECORD:C57([Appointments:8]; *)
		
		If (OK=1)
			hmCal_UPDATE APPOINTMENTS($vl_area)
		End if 
		
	: ($vl_event=hmCal_ClickAppointment)
		
	: ($vl_event=hmCal_DoubleClickArea)
		
	: ($vl_event=hmCal_ClickArea)
		
		$vp_object:=OBJECT_GetPointer("tl_selectedAppointments")
		
		ARRAY LONGINT:C221($tl_selectedapp; 0)
		hmCal_GET SELECTED APPOINTMENTS($vl_area; $tl_selectedapp)
		ARR_Copy(->$tl_selectedapp; $vp_object)
		
		$vt_clicktext:=String:C10($vd_date1)+" "+String:C10($vu_time1)
		
		If ($vf_ganztag)
			$vt_clicktext:=$vt_clicktext+", Ganztag"
		End if 
		
		If ($vl_userref>0)
			$vt_clicktext:=$vt_clicktext+", User: "+String:C10($vl_userref)
		End if 
		
		OBJECT_SetText("vt_clickinfo"; $vt_clicktext)
		
	: ($vl_event=hmCal_Drop)
		
		$vl_arrayindex:=0
		$vl_process:=0
		$vp_variable:=->$vl_process  //point to something
		
		hmCal_DRAG AND DROP PROPERTIES($vl_area; $vp_variable; $vl_arrayindex; $vl_process)
		
		$vl_table:=0
		$vl_field:=0
		RESOLVE POINTER:C394($vp_variable; $vt_varname1; $vl_table; $vl_field)
		
		$vp_listbox:=OBJECT Get pointer:C1124(Object named:K67:5; "tf_listbox1")
		
		$vl_table:=0
		$vl_field:=0
		RESOLVE POINTER:C394($vp_listbox; $vt_varname2; $vl_table; $vl_field)
		
		If ($vl_arrayindex>0) & ($vt_varname1=$vt_varname2)
			
			$vl_view:=hmCal_Get View($vl_area)
			
			If ($vl_view=hmCal_UserWeekView)
				$vf_ganztag:=True:C214
			End if 
			
			If ($vl_view#hmCal_UserView) & ($vl_view#hmCal_UserWeekView)
				$vl_userref:=1
			End if 
			
			$vp_personen:=OBJECT_GetPointer("tt_personen")
			
			CREATE RECORD:C68([Appointments:8])
			[Appointments:8]ID:1:=Sequence number:C244([Appointments:8])
			[Appointments:8]Subject:2:=$vp_personen->{$vl_arrayindex}
			[Appointments:8]Body:3:=$vp_personen->{$vl_arrayindex}
			[Appointments:8]Date1:4:=$vd_date1
			[Appointments:8]Time1:5:=?00:00:00?+$vl_time1
			[Appointments:8]Date2:6:=$vd_date2
			[Appointments:8]Time2:7:=?00:00:00?+$vl_time2
			
			[Appointments:8]Time2:7:=[Appointments:8]Time2:7+3600  //1 hour
			
			If ([Appointments:8]Time2:7>=?24:00:00?)
				[Appointments:8]Date2:6:=[Appointments:8]Date2:6+1
				[Appointments:8]Time2:7:=[Appointments:8]Time2:7-86400
			End if 
			
			[Appointments:8]AllDay:9:=$vf_ganztag
			[Appointments:8]UserID:10:=$vl_userref
			SAVE RECORD:C53([Appointments:8])
			
			hmCal_UPDATE APPOINTMENTS($vl_area)
			
		End if 
		
		//: ($vl_event=hmCal_TryResizeAppointment )
		//
		//QUERY([Appointments];[Appointments]ID=$vl_appointment)
		//
		//hmCal_SET DRAG TIMERANGE ($vl_area;[Appointments]Date1;†00:00:00†+[Appointments]Time1;[Appointments]Date1+1000;0)
		
End case 

$0:=$vl_return
