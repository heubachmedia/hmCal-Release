[Appendix](../category-pages/appendix.md)

# Constants

You can use following constants:

## Contents

- [1 Views](#nummer_00001)
- [2 Errors](#nummer_00002)
- [3 Events](#nummer_00003)
- [4 Properties for areas](#nummer_00004)
- [5 Properties for appointments](#nummer_00005)
- [6 Properties for columns](#nummer_00006)
- [7 Properties for calendars](#nummer_00007)
- [8 Properties for groups](#nummer_00008)
- [9 Properties for working hours](#nummer_00009)
- [10 Properties for users](#nummer_00010)
- [11 Effects](#nummer_00011)
- [12 Recurrence types](#nummer_00012)
- [13 Relation types](#nummer_00013)
- [14 Colors](#nummer_00014)
- [15 Picture formats](#nummer_00015)
- [16 Overlapping styles](#nummer_00016)

<a id="nummer_00001"></a>

## Views

```4d
hmCal_DayView                  1
hmCal_MultiDayView             2
hmCal_MonthView                3
hmCal_UserView                 4
hmCal_UserMultiDayView         5
hmCal_ProjectView              6
hmCal_ResourcesView            7
hmCal_YearView                 8
hmCal_DayUserView              9
```

<a id="nummer_00002"></a>

## Errors

```4d
hmCal_NoError                  0
hmCal_HandleError             -1
hmCal_AppointmentNotFound     -2
hmCal_UserNotFound            -3
hmCal_AppAlreadyExists        -4
hmCal_StylesheetAlreadyExists -5
hmCal_StylesheetNotFound      -6
hmCal_CreationNotPossible     -7
hmCal_UserAlreadyExists       -8
hmCal_SupAppNotFound          -9
hmCal_RelationNotFound       -10
hmCal_ViewNotSupported       -11
hmCal_ActionNotPossible      -12
hmCal_InvalidTransfermode    -13
hmCal_InvalidPath            -14
hmCal_CalendarNotFound       -15
hmCal_WrongPictureFormat     -16
hmCal_IconNotFound           -17
hmCal_IconAlreadyExists      -18
hmCal_ColumnAlreadyExists    -19
hmCal_ColumnNotFound         -20
hmCal_WrongRelationType      -21
hmCal_WrongTimezone          -22
hmCal_InvalidArraySize       -23
hmCal_InvalidRange           -24
hmCal_CellNotFound           -25
hmCal_SpecialDayNotFound     -26
hmCal_NoTimezoneDefined      -27
hmCal_WorkingHourNotFound    -28
hmCal_AppGroupNotFound       -29
```

<a id="nummer_00003"></a>

## Events

```4d
hmCal_UpdateAppointments       1
hmCal_DragAppointment          2
hmCal_ResizeAppointment        3
hmCal_NewAppointment           4
hmCal_DeleteAppointment        5
hmCal_DoubleClickApp           6
hmCal_ClickAppointment         7
hmCal_DoubleClickArea          8
hmCal_ClickArea                9
hmCal_Drop                    10
hmCal_TryNewAppointment       11
hmCal_TryDragAppointment      12
hmCal_TryResizeAppointment    13
hmCal_Error                   14
hmCal_Update_RRULE            15
hmCal_DoubleClickRelation     16
hmCal_ClickRelation           17
hmCal_NewRelation             18
hmCal_DeleteRelation          19
hmCal_ClickAppCurrent         20
hmCal_DoubleClickAppCurrent   21
hmCal_ResizeObject            22
hmCal_SortAppointment         23
hmCal_ClickMonthMore          24
hmCal_DoubleClickMonthMore    25
hmCal_WhileDragAppointment    26
hmCal_OnEditMenu              27
hmCal_CreateNewAppointment    28
hmCal_OnTooltip               29
hmCal_OnScroll                30
hmCal_SortUser                31
hmCal_TimeIndicator_MoveBegin 32
hmCal_TimeIndicator_Move      33
hmCal_TimeIndicator_MoveEnd   34
hmCal_OnColumnHeaderClick     35
hmCal_OnColumnHeaderDoubleClick 36
```

<a id="nummer_00004"></a>

## Properties for areas

```4d
hmCal_prop_UserListWidth       1
hmCal_prop_MultiDayArea        2
hmCal_prop_SwitchUser          3
hmCal_prop_NewLineHeight       4
hmCal_prop_DefaultEffect       5
hmCal_prop_Overlapping         7
hmCal_prop_ScrollAutoHide      8
hmCal_prop_ColumnWidth         9
hmCal_prop_DisplayTime        10
hmCal_prop_AllowDragNew       11
hmCal_prop_DeleteKey          12
hmCal_prop_FreezeView_V       13
hmCal_prop_ShowMonthHeader    14
hmCal_prop_LeftBarWidth       15
hmCal_prop_FreezeView_H       16
hmCal_prop_IndicateOutsideApp 17
hmCal_prop_GridCaption        18
hmCal_prop_GridHourLine       19
hmCal_prop_GridHalfHourLine   20
hmCal_prop_Add3points         21
hmCal_prop_OneLineCaption     22
hmCal_prop_RepeatTimeline     23
hmCal_prop_ShowTimeline       24
hmCal_prop_ShowHeader         25
hmCal_prop_CurrentTimeIndicator 26
hmCal_prop_GMTexport          27
hmCal_prop_MultiDayAreaHeight 28
hmCal_prop_AutoMonthWeeks     29 
hmCal_prop_MultiDayAreaResize 30
hmCal_prop_ColumnLines        31
hmCal_prop_DragTimeVisible    32
hmCal_prop_proj_scaleweek     33
hmCal_prop_proj_scalemonth    34
hmCal_prop_proj_scalequarter  35
hmCal_prop_proj_scaleyear     36
hmCal_prop_PrintingWidth      37
hmCal_prop_PrintingHeight     38
hmCal_prop_ProjectAreaHeight  39
hmCal_prop_DrawAsRect         40
hmCal_prop_ShowResources      41
hmCal_prop_SyncArea           42
hmCal_prop_UserListLock       43
hmCal_prop_AutoUpdateApp      44
hmCal_prop_ResourcesHourGrid  45
hmCal_prop_MaxLines           46
hmCal_prop_TimelineShift      47
hmCal_prop_Lineheight         48
hmCal_prop_proj_ShowHourLines 49
hmCal_prop_ShowWeekNo         50
hmCal_prop_WeekNoWidthMonth   51
hmCal_prop_NewMonthView       52
hmCal_prop_MaxAppHeightMonth  53
hmCal_prop_ScrollInMonthView  54
hmCal_prop_ShowTextOnBar      55
hmCal_prop_IndicatorOffset    56
hmCal_prop_AppRealloc         57
hmCal_prop_MultiAreaHeight    58
hmCal_prop_ColumnTextOffsetV  59
hmCal_prop_AreaVisible        60
hmCal_prop_MonthLineHeight    61
hmCal_prop_GhostApppointment  62
hmCal_prop_AutoSwitchFullDay  63
hmCal_prop_RelationsInView5   64
hmCal_prop_StaticArea         65
hmCal_prop_StaticSecPerPixel  66
hmCal_prop_HScrollbarColumn   67
hmCal_prop_TimelinePosition   68
hmCal_prop_FirstDisplUserID   69
hmCal_prop_HierarchicalView5  70
hmCal_prop_TimelineFullHours  71
hmCal_prop_SelectionThickness 72
hmCal_prop_ShowUserDescription 73
hmCal_prop_NewFullDay         74
hmCal_prop_NewAppointmentID   75
hmCal_prop_CurrentTimeIndicatorMoveable 76
hmCal_prop_TimeIndicator      77
hmCal_prop_Edge               78
hmCal_prop_UserSortable       79
hmCal_prop_InvertSelection    80
hmCal_prop_3LinesHeader       81
hmCal_prop_Barheight          82
hmCal_prop_TimelineDescrOffsetV 83
hmCal_prop_HeaderLineHeight1  84
hmCal_prop_HeaderLineHeight2  85
hmCal_prop_HeaderLineHeight3  86
hmCal_prop_DaylineFromHeader  87
hmCal_prop_ScrollIncrementSeconds 88
hmCal_prop_DescrTextInProjectView 89
hmCal_prop_ScrollIncrementPixels  90
hmCal_prop_IconsRight             91
```

<a id="nummer_00005"></a>

## Properties for appointments

```4d
hmCal_aprop_ID                 1
hmCal_aprop_CalendarID         2
hmCal_aprop_Textheader         3
hmCal_aprop_Textbody           4
hmCal_aprop_Tiptext            5
hmCal_aprop_AllDay             6
hmCal_aprop_DateFrom           7
hmCal_aprop_DateTo             8
hmCal_aprop_TimeFrom           9
hmCal_aprop_TimeTo            10
hmCal_aprop_Effect            11
hmCal_aprop_DoneStatus        12
hmCal_aprop_Milestone         13
hmCal_aprop_Icon              14
hmCal_aprop_Lock              15
hmCal_aprop_SupAppointment    16
hmCal_aprop_HeaderVisible     17
hmCal_aprop_TimeVisible       18
hmCal_aprop_ShowCurrentTime   19
hmCal_aprop_CurrDateFrom      20
hmCal_aprop_CurrDateTo        21
hmCal_aprop_CurrTimeFrom      22
hmCal_aprop_CurrTimeTo        23
hmCal_aprop_Location          24
hmCal_aprop_Expand            25
hmCal_aprop_Priority          26
hmCal_aprop_UID               27
hmCal_aprop_URL               28
hmCal_aprop_Independent       29
hmCal_aprop_DrawAsRect        30
hmCal_aprop_HasSubApps        31
hmCal_aprop_Icon2             32
hmCal_aprop_Icon3             33
hmCal_aprop_TextheaderMS      34
hmCal_aprop_TextbodyMS        35
hmCal_aprop_UseGradient       36 
hmCal_aprop_Sequence          37
hmCal_aprop_Method            38
hmCal_aprop_Textalignment_H   39
hmCal_aprop_ShowFrame         40
hmCal_aprop_DTSTAMP           41
hmCal_aprop_UserID            42
hmCal_aprop_Group             43
hmCal_aprop_Textalignment_V   44
hmCal_aprop_Header_Linespacing   45
hmCal_aprop_Header_Margin_left   46
hmCal_aprop_Header_Margin_top    47
hmCal_aprop_Header_Margin_right  48
hmCal_aprop_Header_Margin_bottom 49
hmCal_aprop_Descr_Linespacing    50
hmCal_aprop_Descr_Margin_left    51
hmCal_aprop_Descr_Margin_top     52
hmCal_aprop_Descr_Margin_right   53
hmCal_aprop_Descr_Margin_bottom  54
```

<a id="nummer_00006"></a>

## Properties for columns

```4d
hmCal_cprop_width              1
hmCal_cprop_visible            2
hmCal_cprop_headertext1        3
hmCal_cprop_headertext2        4
hmCal_cprop_alignment          5
hmCal_cprop_resizeable         6
hmCal_cprop_minwidth           7
hmCal_cprop_headeralignment    8
hmCal_cprop_wordwrap           9
hmCal_cprop_use_standardtext  10
```

<a id="nummer_00007"></a>

## Properties for calendars

```4d
hmCal_vprop_Visible            1
hmCal_vprop_UpdateAppointments 2
```

<a id="nummer_00008"></a>

## Properties for groups

```4d
hmCal_gprop_Shift              1
```

<a id="nummer_00009"></a>

## Properties for working hours

```4d
hmCal_wprop_Name               1
```

<a id="nummer_00010"></a>

## Properties for users

```4d
hmCal_uprop_Name               1
hmCal_uprop_Icon               2
hmCal_uprop_Timezone           3
hmCal_uprop_TimezoneOffset     4
hmCal_uprop_Lineheight         5
hmCal_uprop_SupUser            6
hmCal_uprop_Expand             7
```

<a id="nummer_00011"></a>

## Effects

```4d
hmCal_Effect_Normal            0
hmCal_Effect_Dim               1
hmCal_Effect_Fading            2
hmCal_Effect_LeftBar           3
```

<a id="nummer_00012"></a>

## Recurrence types

```4d
hmCal_rrule_none               0
hmCal_rrule_secondly           1
hmCal_rrule_minutely           2
hmCal_rrule_hourly             3
hmCal_rrule_daily              4
hmCal_rrule_weekly             5
hmCal_rrule_monthly            6
hmCal_rrule_yearly             7
```

<a id="nummer_00013"></a>

## Relation types

```4d
hmCal_rel_EndToBegin           1
hmCal_rel_BeginToBegin         2
hmCal_rel_EndToEnd             3
hmCal_rel_BeginToEnd           4
```

<a id="nummer_00014"></a>

## Colors

```4d
hmCal_clr_Background           1
hmCal_clr_Workinghours         2
hmCal_clr_Selection            3
hmCal_clr_AppNewBackground     4
hmCal_clr_AppNewForeground     5
hmCal_clr_AppNewHeadertext     6
hmCal_clr_AppNewDescrtext      7
hmCal_clr_ProjectAltBackground 8
hmCal_clr_Relation             9
hmCal_clr_Description         10
hmCal_clr_Hourline            11
hmCal_clr_Halfhourline        12
hmCal_clr_AppBackcolor        13
hmCal_clr_AppForecolor        14
hmCal_clr_AppHeadertext       15
hmCal_clr_AppDescrtext        16
hmCal_clr_UserBackground      17
hmCal_clr_ColumnBackground    18
hmCal_clr_ColumnText          19
hmCal_clr_ColumnHeadertext    20
hmCal_clr_CurrentTimeIndicator 21
hmCal_clr_CurrAppBackcolor    22
hmCal_clr_CurrAppForecolor    23
hmCal_clr_CurrAppHeadertext   24
hmCal_clr_CurrAppDescrtext    25
hmCal_clr_CellText            26
hmCal_clr_CellBackground      27
hmCal_clr_Frame               28
hmCal_clr_Columnline          29
hmCal_clr_Dayline             30
hmCal_clr_DescriptionHours    31
hmCal_clr_AppFrame            32
hmCal_clr_AppNewFrame         33
hmCal_clr_UserHeader          34
hmCal_clr_AppBullet           35
hmCal_clr_UserHeaderText      36
hmCal_clr_SpecDayBack         37
hmCal_clr_SpecDayText         38
hmCal_clr_SpecDayHeaderBack   39
hmCal_clr_WorkingHoursText    40
hmCal_clr_TimeIndicatorBack   41
hmCal_clr_TimeIndicatorFrame  42
hmCal_clr_TimeIndicatorText   43
hmCal_clr_AppNewHeadertextInv 44
hmCal_clr_AppNewDescrtextInv  45
hmCal_clr_AppHeadertextInv    46
hmCal_clr_AppDescrtextInv     47
hmCal_clr_Timeline            48
```

<a id="nummer_00015"></a>

## Picture formats

```4d
hmCal_picture_jpg              1
hmCal_picture_png              2
hmCal_picture_bmp              3
hmCal_picture_gif              4
hmCal_picture_tiff             5
hmCal_picture_pdf              6
hmCal_picture_svg              7
hmCal_picture_emf              8
hmCal_picture_jxr              9
hmCal_picture_dds             10
```

<a id="nummer_00016"></a>

## Overlapping styles

```4d
hmCal_Overlapping_None         0
hmCal_Overlapping_Half         1
hmCal_Overlapping_Complete     2
```
