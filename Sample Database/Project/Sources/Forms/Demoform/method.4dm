C_LONGINT:C283($i; $vl_pos; $vl_view; $vl_area; $vl_miniarea; $vl_red; $vl_green; $vl_blue; $vl_color)
C_POINTER:C301($vp_object; $vp_tl_hoursperpage; $vp_register; $vp_personen; $vp_stylesheet_name; $vp_stylesheet_fontname; $vp_stylesheet_fontsize; $vp_stylesheet_fontstyle; $vp_tt_picturesize; $vp_tg_picturesize_width; $vp_tg_picturesize_height; $vp_tt_picttypes; $vp_stylesheet_type)
C_TEXT:C284($vt_Callback)

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		//Init Register
		
		$vp_register:=OBJECT_InitArray("tt_register"; Text array:K8:16)
		ARR_Resize($vp_register; 5)
		$vp_register->{1}:="Views"
		$vp_register->{2}:="Options"
		$vp_register->{3}:="Stylesheets"
		$vp_register->{4}:="Info"
		$vp_register->{5}:="Save as image"
		
		$vl_area:=OBJECT_GetLongint("calarea")
		$vl_miniarea:=OBJECT_GetLongint("calmini")
		
		ARRAY TEXT:C222($tt_monthnames; 12)
		$tt_monthnames{1}:="Januar"
		$tt_monthnames{2}:="Februar"
		$tt_monthnames{3}:="März"
		$tt_monthnames{4}:="April"
		$tt_monthnames{5}:="Mai"
		$tt_monthnames{6}:="Juni"
		$tt_monthnames{7}:="Juli"
		$tt_monthnames{8}:="August"
		$tt_monthnames{9}:="September"
		$tt_monthnames{10}:="Oktober"
		$tt_monthnames{11}:="November"
		$tt_monthnames{12}:="Dezember"
		hmCal_SET MONTH NAMES($vl_area; $tt_monthnames)
		hmCal_mini_SET MONTH NAMES($vl_miniarea; $tt_monthnames)
		
		ARRAY TEXT:C222($tt_weekdaynames; 7)
		$tt_weekdaynames{1}:="Montag"
		$tt_weekdaynames{2}:="Dienstag"
		$tt_weekdaynames{3}:="Mittwoch"
		$tt_weekdaynames{4}:="Donnerstag"
		$tt_weekdaynames{5}:="Freitag"
		$tt_weekdaynames{6}:="Samstag"
		$tt_weekdaynames{7}:="Sonntag"
		hmCal_SET WEEKDAY NAMES($vl_area; $tt_weekdaynames)
		hmCal_mini_SET WEEKDAY NAMES($vl_miniarea; $tt_weekdaynames)
		
		$vp_tl_hoursperpage:=OBJECT_InitArray("tl_hoursperpage"; LongInt array:K8:19)
		ARR_Resize($vp_tl_hoursperpage; 19)
		
		For ($i; 6; 24)
			$vp_tl_hoursperpage->{$i-5}:=$i
		End for 
		
		$vl_pos:=Find in array:C230($vp_tl_hoursperpage->; hmCal_Get Visible Hours($vl_area))
		If ($vl_pos>0)
			$vp_tl_hoursperpage->:=$vl_pos
		Else 
			$vp_tl_hoursperpage->:=1
			hmCal_SET VISIBLE HOURS($vl_area; $vp_tl_hoursperpage->{1})
		End if 
		
		InitUsers($vl_area)
		
		ALL RECORDS:C47([Appointments:8])
		ORDER BY:C49([Appointments:8]; [Appointments:8]Date1:4; >)  //find first date
		hmCal_SET START DATE($vl_area; [Appointments:8]Date1:4)
		
		$vl_view:=hmCal_Get View($vl_area)
		
		OBJECT_SetLongint("vl_dayview"; Num:C11($vl_view=hmCal_DayView))
		OBJECT_SetLongint("vl_weekview"; Num:C11($vl_view=hmCal_WeekView))
		OBJECT_SetLongint("vl_monthview"; Num:C11($vl_view=hmCal_MonthView))
		OBJECT_SetLongint("vl_dayuserview"; Num:C11($vl_view=hmCal_UserMultiDayView))
		OBJECT_SetLongint("vl_weekuser"; Num:C11($vl_view=hmCal_UserWeekView))
		OBJECT_SetLongint("vl_resourcesview"; Num:C11($vl_view=hmCal_ResourcesView))
		OBJECT_SetLongint("vl_year_view"; Num:C11($vl_view=hmCal_YearView))
		OBJECT_SetLongint("vl_userdayview"; Num:C11($vl_view=hmCal_UserDayView))
		
		OBJECT_SetLongint("vl_rounding"; 1)
		hmCal_SET ROUNDING($vl_area; 1)
		
		OBJECT_SetLongint("vl_roundingruler"; 15)
		hmCal_SET ROUNDING VALUE($vl_area; 15)
		
		OBJECT SET ENABLED:C1123(*; "vl_roundingruler"; True:C214)
		
		$vp_object:=OBJECT_InitArray("tl_daysperweek"; LongInt array:K8:19)
		ARR_Resize($vp_object; 10)
		$vp_object->{1}:=2
		$vp_object->{2}:=3
		$vp_object->{3}:=4
		$vp_object->{4}:=5
		$vp_object->{5}:=6
		$vp_object->{6}:=7
		$vp_object->{7}:=10
		$vp_object->{8}:=14
		$vp_object->{9}:=21
		$vp_object->{10}:=30
		
		$vp_object->:=6
		
		$vp_object:=OBJECT_InitArray("tl_visibledays"; LongInt array:K8:19)
		ARR_Resize($vp_object; 7)
		$vp_object->{1}:=2
		$vp_object->{2}:=3
		$vp_object->{3}:=4
		$vp_object->{4}:=5
		$vp_object->{5}:=6
		$vp_object->{6}:=7
		$vp_object->{7}:=30
		$vp_object->:=6
		hmCal_SET VISIBLE DAYS($vl_area; $vp_object->{6})
		
		$vp_object:=OBJECT_InitArray("tl_daysperuser"; LongInt array:K8:19)
		ARR_Resize($vp_object; 5)
		
		$vp_object->{1}:=1
		$vp_object->{2}:=2
		$vp_object->{3}:=3
		$vp_object->{4}:=4
		$vp_object->{5}:=5
		$vp_object->:=2
		hmCal_SET DAYS PER USER($vl_area; 2)
		
		$vp_object:=OBJECT_InitArray("tl_visibleweeks"; LongInt array:K8:19)
		ARR_Resize($vp_object; 29)
		
		For ($i; 0; 28)
			$vp_object->{$i+1}:=$i
		End for 
		$vp_object->:=1
		hmCal_SET VISIBLE WEEKS($vl_area; $vp_object->{1})
		
		$vp_object:=OBJECT_InitArray("tl_visibleweekdays"; LongInt array:K8:19)
		ARR_Resize($vp_object; 7)
		
		For ($i; 1; Size of array:C274($vp_object->))
			$vp_object->{$i}:=$i
		End for 
		$vp_object->:=7
		hmCal_SET VISIBLE WEEKDAYS($vl_area; $vp_object->{7})
		
		$vp_personen:=OBJECT_InitArray("tt_personen"; Text array:K8:16)
		ARR_Resize($vp_personen; 4)
		$vp_personen->{1}:="Morgan Smith"
		$vp_personen->{2}:="Peter Angus"
		$vp_personen->{3}:="Mitch Stone"
		$vp_personen->{4}:="Ann Legal"
		
		OBJECT_SetText("vt_clickinfo"; "")
		OBJECT_InitArray("tl_selectedAppointments"; LongInt array:K8:19)
		
		OBJECT_SetLongint("vl_onelineheader"; 0)
		OBJECT_SetLongint("vl_startonmonday"; 1)
		OBJECT_SetLongint("vl_viewmultidayarea"; 1)
		OBJECT_SetLongint("vl_allowdragnew"; 1)
		OBJECT_SetLongint("vl_overlapping"; 1)
		OBJECT_SetLongint("vl_ScrollAutoHide"; 1)
		OBJECT_SetLongint("vl_displaytime"; 1)
		OBJECT_SetLongint("vl_FreezeView_V"; 0)
		OBJECT_SetLongint("vl_ShowMonthHeader"; 1)
		OBJECT_SetLongint("vl_IndicateOutsideApp"; 1)
		
		SetOptions
		
		hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_SwitchUser; 1)
		
		hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_MultiLine; 1)
		hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_MaxLines; 100)
		
		$vp_stylesheet_name:=OBJECT_InitArray("tt_stylesheet_name"; Text array:K8:16)
		$vp_stylesheet_fontname:=OBJECT_InitArray("tt_stylesheet_fontname"; Text array:K8:16)
		$vp_stylesheet_fontsize:=OBJECT_InitArray("tg_stylesheet_fontsize"; Integer array:K8:18)
		$vp_stylesheet_fontstyle:=OBJECT_InitArray("tg_stylesheet_fontstyle"; Integer array:K8:18)
		$vp_stylesheet_type:=OBJECT_InitArray("tg_stylesheet_type"; Integer array:K8:18)
		
		ARR_Resize($vp_stylesheet_name; 6)
		ARR_Resize($vp_stylesheet_fontname; 6)
		ARR_Resize($vp_stylesheet_fontsize; 6)
		ARR_Resize($vp_stylesheet_fontstyle; 6)
		ARR_Resize($vp_stylesheet_type; 6)
		
		$vp_stylesheet_name->{1}:="Appointment Header"
		$vp_stylesheet_fontname->{1}:="Arial"
		$vp_stylesheet_fontsize->{1}:=10
		$vp_stylesheet_fontstyle->{1}:=Bold:K14:2
		$vp_stylesheet_type->{1}:=1
		
		$vp_stylesheet_name->{2}:="Appointment Text"
		$vp_stylesheet_fontname->{2}:="Arial"
		$vp_stylesheet_fontsize->{2}:=10
		$vp_stylesheet_fontstyle->{2}:=Plain:K14:1
		$vp_stylesheet_type->{2}:=2
		
		$vp_stylesheet_name->{3}:="Calender Description"
		$vp_stylesheet_fontname->{3}:="Arial"
		$vp_stylesheet_fontsize->{3}:=10
		$vp_stylesheet_fontstyle->{3}:=Plain:K14:1
		$vp_stylesheet_type->{3}:=3
		
		$vp_stylesheet_name->{4}:="Calender Month Header"
		$vp_stylesheet_fontname->{4}:="Arial"
		$vp_stylesheet_fontsize->{4}:=16
		$vp_stylesheet_fontstyle->{4}:=Plain:K14:1
		$vp_stylesheet_type->{4}:=4
		
		$vp_stylesheet_name->{5}:="User Description"
		$vp_stylesheet_fontname->{5}:="Arial"
		$vp_stylesheet_fontsize->{5}:=12
		$vp_stylesheet_fontstyle->{5}:=Plain:K14:1
		$vp_stylesheet_type->{5}:=5
		
		$vp_stylesheet_name->{6}:="Timeline"
		$vp_stylesheet_fontname->{6}:="Arial"
		$vp_stylesheet_fontsize->{6}:=12
		$vp_stylesheet_fontstyle->{6}:=Plain:K14:1
		$vp_stylesheet_type->{6}:=14
		
		If (Folder separator:K24:12#":")
			
			ARRAY TEXT:C222($tt_fontlist; 0)
			FONT LIST:C460($tt_fontlist)
			
			If (Find in array:C230($tt_fontlist; "Arial Unicode MS")>0)
				
				For ($i; 1; Size of array:C274($vp_stylesheet_fontname->))
					$vp_stylesheet_fontname->{$i}:="Arial Unicode MS"
				End for 
				
			End if 
			
		End if 
		
		$vp_stylesheet_name->:=1
		
		$vp_object:=OBJECT_InitArray("tl_fontsize"; LongInt array:K8:19)
		ARR_Resize($vp_object; 10)
		
		$vp_object->{1}:=8
		$vp_object->{2}:=9
		$vp_object->{3}:=10
		$vp_object->{4}:=12
		$vp_object->{5}:=14
		$vp_object->{6}:=16
		$vp_object->{7}:=18
		$vp_object->{8}:=20
		$vp_object->{9}:=24
		$vp_object->{10}:=32
		
		$vp_object:=OBJECT_InitArray("tt_fonts"; Text array:K8:16)
		ARR_Resize($vp_object; 0)
		
		ARRAY TEXT:C222($tt_fonts; 0)
		FONT LIST:C460($tt_fonts)
		
		ARR_Copy(->$tt_fonts; $vp_object)
		
		For ($i; 1; Size of array:C274($vp_stylesheet_fontname->))
			ErrorHandler(hmCal_Add Stylesheet($vl_area; $i; $vp_stylesheet_fontname->{$i}; $vp_stylesheet_fontsize->{$i}; $vp_stylesheet_fontstyle->{$i}))
		End for 
		
		$vp_object:=OBJECT_InitArray("tt_effect"; Text array:K8:16)
		
		ARR_Resize($vp_object; 4)
		
		$vp_object->{1}:="none"
		$vp_object->{2}:="transparent"
		$vp_object->{3}:="fading"
		$vp_object->{4}:="left bar"
		$vp_object->:=1
		
		//Colors
		
		$vl_red:=0
		$vl_green:=0
		$vl_blue:=0
		
		hmCal_GET COLOR($vl_area; hmCal_clr_AppNewBackground; 0; $vl_red; $vl_green; $vl_blue)
		$vl_color:=hmCal_16To8BitRGB($vl_red; $vl_green; $vl_blue)
		OBJECT SET RGB COLORS:C628(*; "background_color"; $vl_color; $vl_color)
		
		hmCal_GET COLOR($vl_area; hmCal_clr_AppNewForeground; 0; $vl_red; $vl_green; $vl_blue)
		$vl_color:=hmCal_16To8BitRGB($vl_red; $vl_green; $vl_blue)
		OBJECT SET RGB COLORS:C628(*; "foreground_color"; $vl_color; $vl_color)
		
		hmCal_GET COLOR($vl_area; hmCal_clr_AppNewHeadertext; 0; $vl_red; $vl_green; $vl_blue)
		$vl_color:=hmCal_16To8BitRGB($vl_red; $vl_green; $vl_blue)
		OBJECT SET RGB COLORS:C628(*; "headertext_color"; $vl_color; $vl_color)
		
		hmCal_GET COLOR($vl_area; hmCal_clr_AppNewDescrtext; 0; $vl_red; $vl_green; $vl_blue)
		$vl_color:=hmCal_16To8BitRGB($vl_red; $vl_green; $vl_blue)
		OBJECT SET RGB COLORS:C628(*; "descrtext_color"; $vl_color; $vl_color)
		
		hmCal_SET COLOR($vl_area; hmCal_clr_Dayline; 0; 0xFFFF; 0x0000; 0x0000)
		
		hmCal_SET AREA PROPERTY($vl_area; hmCal_prop_DefaultEffect; hmCal_Effect_Normal)
		hmCal_Add Special Day($vl_area; Current date:C33; -1; -1; -1)
		
		ARRAY TEXT:C222($tt_formats; 4)
		$tt_formats{1}:="%n. %N."
		$tt_formats{2}:="%n. %N. %y"
		$tt_formats{3}:="%n. %N. %Y"
		$tt_formats{4}:="%n. %B %Y"
		hmCal_OPTIMIZED FORMATS($vl_area; $tt_formats)
		
		hmCal_INSTALL CALLBACK($vl_area; "CallBack")
		$vt_Callback:=hmCal_Get Callback($vl_area)
		hmCal_UPDATE APPOINTMENTS($vl_area)
		
		StyleSheet_Apply($vl_area)
		StyleSheet_Select
		
		//Page 5
		
		$vp_tt_picttypes:=OBJECT_InitArray("tt_picttypes"; Text array:K8:16)
		
		ARR_Resize($vp_tt_picttypes; 8)
		
		$vp_tt_picttypes->{1}:="jpg"
		$vp_tt_picttypes->{2}:="png"
		$vp_tt_picttypes->{3}:="bmp"
		$vp_tt_picttypes->{4}:="gif"
		$vp_tt_picttypes->{5}:="tif"
		$vp_tt_picttypes->{6}:="pdf (only Macintosh)"
		$vp_tt_picttypes->{7}:="svg"
		$vp_tt_picttypes->{8}:="dds (only Windows)"
		
		$vp_tt_picttypes->:=1
		
		$vp_tt_picturesize:=OBJECT_InitArray("tt_picturesize"; Text array:K8:16)
		$vp_tg_picturesize_width:=OBJECT_InitArray("tg_picturesize_width"; Integer array:K8:18)
		$vp_tg_picturesize_height:=OBJECT_InitArray("tg_picturesize_height"; Integer array:K8:18)
		
		ARR_Resize($vp_tt_picturesize; 5)
		ARR_Resize($vp_tg_picturesize_width; 5)
		ARR_Resize($vp_tg_picturesize_height; 5)
		
		$vp_tt_picturesize->{1}:="Default"
		$vp_tg_picturesize_width->{1}:=0
		$vp_tg_picturesize_height->{1}:=0
		
		$vp_tt_picturesize->{2}:="-"
		$vp_tg_picturesize_width->{2}:=0
		$vp_tg_picturesize_height->{2}:=0
		
		$vp_tt_picturesize->{3}:="500x1000"
		$vp_tg_picturesize_width->{3}:=500
		$vp_tg_picturesize_height->{3}:=1000
		
		$vp_tt_picturesize->{4}:="1000x1000"
		$vp_tg_picturesize_width->{4}:=1000
		$vp_tg_picturesize_height->{4}:=1000
		
		$vp_tt_picturesize->{5}:="1500x1000"
		$vp_tg_picturesize_width->{5}:=1500
		$vp_tg_picturesize_height->{5}:=1000
		
		$vp_tt_picturesize->:=1
		
		//Mini
		
		hmCal_mini_START ON MONDAY($vl_miniarea; 1)
		
		$vp_object:=OBJECT_InitArray("tl_mini_months"; LongInt array:K8:19)
		ARR_Resize($vp_object; 10)
		For ($i; 1; Size of array:C274($vp_object->))
			$vp_object->{$i}:=$i
		End for 
		$vp_object->:=3
		
		hmCal_mini_SET MONTHS($vl_miniarea; $vp_object->{3})
		hmCal_mini_SET TIP($vl_miniarea; Current date:C33; "today")
		hmCal_mini_SET TIP($vl_miniarea; Current date:C33-1; "yesterday")
		hmCal_mini_SET TIP($vl_miniarea; Current date:C33+1; "tomorrow")
		
	: (Form event code:C388=On Close Box:K2:21)
		CANCEL:C270
		
End case 
