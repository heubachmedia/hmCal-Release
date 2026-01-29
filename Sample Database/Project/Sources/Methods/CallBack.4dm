//%attributes = {}
#DECLARE($vl_area : Integer; $vl_event : Integer; $vl_appointment : Integer; $vd_date1 : Date; $vd_date2 : Date; $vl_time1 : Integer; $vl_time2 : Integer; $vl_ganztag : Integer; $vl_userref : Integer)->$vl_return : Integer

var $vl_table; $vl_field; $vl_arrayindex; $vl_process; $vl_view; $vl_windowref : Integer
var $vf_ganztag : Boolean
var $vp_variable; $vp_personen; $vp_listbox; $vp_object : Pointer
var $vt_varname1; $vt_varname2; $vt_clicktext : Text
var $vu_time1; $vu_time2 : Time

$vl_return:=0

$vf_ganztag:=$vl_ganztag=1

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
		
		$vl_windowref:=Open form window:C675([Appointments:8]; "Input")
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
		
		$vl_windowref:=Open form window:C675([Appointments:8]; "Input")
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
		
		OBJECT SET VALUE:C1742("vt_clickinfo"; $vt_clicktext)
		
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
