[Introduction](../category-pages/introduction.md)

# Release notes

## Contents

- [1 Version 8.1 (2018/10/29)](#nummer_00001)
- [2 Version 8.0 (2018/07/24)](#nummer_00002)
- [3 Version 7.4](#nummer_00003)
- [4 Version 7.3 (2017/11/13)](#nummer_00004)
- [5 Version 7.2 (2017/06/15)](#nummer_00005)
- [6 Version 7.1 (2017/04/18)](#nummer_00006)
- [7 Version 7.0 (2017/01/10)](#nummer_00007)
- [8 Version 6.1 (2016/02/09)](#nummer_00008)
- [9 Version 6.0 (2015/07/22)](#nummer_00009)
- [10 Version 5.3 (2015/04/10)](#nummer_00010)
- [11 Version 5.2 (2014/09/16)](#nummer_00011)
- [12 Version 5.1 (2014/02/26)](#nummer_00012)
- [13 Version 5.0 (2013/10/17)](#nummer_00013)
- [14 Version 4.4 (2013/02/13)](#nummer_00014)
- [15 Version 4.3 (2013/02/04)](#nummer_00015)
- [16 Version 4.2 (2012/12/04)](#nummer_00016)  [17 Version 4.1 (2012/04/20)](#nummer_00018)  [17.1 New](#nummer_00019)  [18 Version 4.0 (2012/02/27)](#nummer_00020)  [18.1 New](#nummer_00021)  [19 Version 3.0 (2009/11/26)](#nummer_00022)  [19.1 New](#nummer_00023)  [20 Version 2.3 (2009/07/29)](#nummer_00024)  [20.1 New](#nummer_00025) [20.2 Modifications](#nummer_00026)  [21 Version 2.2 (2009/01/20)](#nummer_00027)  [21.1 New](#nummer_00028) [21.2 Modifications](#nummer_00029)  [22 Version 2.1.1 (2009/01/09)](#nummer_00030)  [22.1 New](#nummer_00031)  [23 Version 2.1 (2008/12/05)](#nummer_00032)  [23.1 New](#nummer_00033) [23.2 Modifications](#nummer_00034)  [24 Version 2.0 (2008/10/15)](#nummer_00035)  [24.1 New](#nummer_00036) [24.2 Modifications](#nummer_00037)  [25 Version 1.9 (2008/02/19)](#nummer_00038)  [25.1 New](#nummer_00039) [25.2 Modifications](#nummer_00040)  [26 Version 1.8 (2007/12/06)](#nummer_00041)  [26.1 New](#nummer_00042) [26.2 Modifications](#nummer_00043)  [27 Version 1.7 (2007/10/23)](#nummer_00044)  [27.1 New](#nummer_00045) [27.2 Modifications](#nummer_00046)  [28 Version 1.6 (2007/06/15)](#nummer_00047)  [28.1 New](#nummer_00048) [28.2 Modifications](#nummer_00049)  [29 Version 1.5 (2007/06/04)](#nummer_00050)  [29.1 New](#nummer_00051) [29.2 Modifications](#nummer_00052)  [30 Version 1.4 (2007/04/02)](#nummer_00053) [31 Version 1.3 (2007/03/09)](#nummer_00054) [32 Version 1.2 (2007/02/07)](#nummer_00055) [33 Version 1.1 (2007/01/26)](#nummer_00056) [34 Version 1.0 (2007/01/18)](#nummer_00057)
  - [16.1 New](#nummer_00017)

<a id="nummer_00001"></a>

## Version 8.1 (2018/10/29)

- Thread safety
- Changed command [hmCal_GET AREA LIST](../../commands/areas/hmCal_GET-AREA-LIST.md)
- New command [hmCal_Get Current Thread ID](../../commands/utilities/hmCal_Get-Current-Thread-ID.md)

<a id="nummer_00002"></a>

## Version 8.0 (2018/07/24)

- The command [hmCal_Delete Column](../../commands/columns/hmCal_Delete-Column.md) can now delete all columns
- New command [hmCal_GET COLUMN LIST](../../commands/columns/hmCal_GET-COLUMN-LIST.md)
- New command [hmCal_SET LINEDASH](../../commands/calendar-settings/hmCal_SET-LINEDASH.md) to define segmented lines
- New command [hmCal_SET LINE WIDTH](../../commands/calendar-settings/hmCal_SET-LINE-WIDTH.md) to define the widths of lines
- New area properties to set the scroll increments
- New command [hmCal_SET GROUP PROPERTY](../../commands/appointments/hmCal_SET-GROUP-PROPERTY.md)
- New command [hmCal_Get Point Info JSON](../../commands/areas/hmCal_Get-Point-Info-JSON.md) for getting detailed information about a point as an C_OBJECT
- Certification for 4D v16 and v17

<a id="nummer_00003"></a>

## Version 7.4

- The command [hmCal_GET OLD TIMERANGE](../../commands/areas/hmCal_GET-OLD-TIMERANGE.md) returns the user list instead of the user ID, now. Check your code!
- The parameter $9 (user-id) of the callback method is used for the events *hmCal_NewAppointment*, *hmCal_DoubleClickArea*, *hmCal_ClickArea*, *hmCal_Drop*, *hmCal_NewRelation* and *hmCal_SortUser* only. For the other events, use the command [hmCal_SET APP USER LIST](../../commands/appointments/hmCal_SET-APP-USER-LIST.md) instead!
- The command [hmCal_GET OBJECT RECT](../../commands/calendar-settings/hmCal_GET-OBJECT-RECT.md) has new options and returns C_REAL coordinates now. Check your code!

<a id="nummer_00004"></a>

## Version 7.3 (2017/11/13)

- The command [hmCal_SET WORKING HOURS EX](../../commands/working-hours/hmCal_SET-WORKING-HOURS-EX.md) execepts an array for the alpha channel
- New events: *hmCal_OnColumnHeaderClick* and *hmCal_OnColumnHeaderDoubleClick*
- New area property *hmCal_prop_3LinesHeader* to show an extra line in the user multi day view and project view
- New area property *hmCal_prop_Barheight* to set a custom appointment barheight
- New area property *hmCal_prop_TimelineDescrOffsetV* to shift the text in the timeline
- Appointments in the month view are sorted automatically by date/time now

<a id="nummer_00005"></a>

## Version 7.2 (2017/06/15)

- New appointment properties to set header and description text linespaces and margins: [hmCal_Set App Property](../../commands/appointments/hmCal_Set-App-Property.md)
- New area property to set a special "invert"-effect if selecting an appointment for the *hmCal_Effect_LeftBar*-effect
- New color values to set "invert"-colors and to set a text color for the time line
- Now you can set a stylesheet for the time line
- New command [hmCal_Create Working Hours](../../commands/working-hours/hmCal_Create-Working-Hours.md) to create working hours
- The command [hmCal_GET WORKING HOUR LIST](../../commands/working-hours/hmCal_GET-WORKING-HOUR-LIST.md) has a new parameter to get working hours from users
- New command [hmCal_DELETE WORKING HOURS](../../commands/working-hours/hmCal_DELETE-WORKING-HOURS.md)

<a id="nummer_00006"></a>

## Version 7.1 (2017/04/18)

- The SVG picture export contains the id of the appointment
- Support of vertical alignment
- Timeindicator can be moved by drag & drop (new events)
- Support of time indicator labels: [hmCal_SET TIMEINDICATOR TEXT](../../commands/calendar-settings/hmCal_SET-TIMEINDICATOR-TEXT.md)
- Support of stylesheets of the mini calendar

<a id="nummer_00007"></a>

## Version 7.0 (2017/01/10)

- 64 Bit Version for Mac (4D and 4D Server)
- Certification for 4D v15.2 and v16
- Complete rewritten drawing engine under Windows: Moving from GDI+ to Direct2D and DirectWrite
- Removed command [hmCal_Area To Picture File](../../commands/obsolete-commands/hmCal_Area-To-Picture-File.md)
- Removed EMF-File Support
- Adding parameters for the resolution to the command [hmCal_Area To Picture](../../commands/areas/hmCal_Area-To-Picture.md)
- Support of new picture types: WMP and DDS on Windows
- Handling paths on Mac requires the POSIX format. Please review the following commands:
- New events: *hmCal_OnTooltip*, *hmCal_OnScroll* and *hmCal_SortUser*
- New command [hmCal_GET USER LIST](../../commands/user/hmCal_GET-USER-LIST.md) to get a list of all users
- New commands [hmCal_SET COLOR NEW](../../commands/calendar-settings/hmCal_SET-COLOR-NEW.md) and [hmCal_GET COLOR NEW](../../commands/calendar-settings/hmCal_GET-COLOR-NEW.md) to define the alpha channel for colors
- New command [hmCal_SET TIMEOUT LIST](../../commands/calendar-settings/hmCal_SET-TIMEOUT-LIST.md) to set breaks in the time line
- New commands [hmCal_Add Group](../../commands/appointments/hmCal_Add-Group.md) and [hmCal_DELETE GROUP](../../commands/appointments/hmCal_DELETE-GROUP.md) to group related appoinments together in a view
- Some events are not activated by default anymore. See chapter [hmCal_SET EVENT STATE](../../commands/areas/hmCal_SET-EVENT-STATE.md). We recommend to activate all events you need explicitly!
- It is now possible to sort the user rows in the user multi day view

<a id="nummer_00008"></a>

## Version 6.1 (2016/02/09)

- Certification for 4D v14, v15.1 and v15R-Versions
- New commands for customizing working hours: [hmCal_SET WORKING HOURS PROP](../../commands/working-hours/hmCal_SET-WORKING-HOURS-PROP.md), [hmCal_GET WORKING HOURS PROP](../../commands/working-hours/hmCal_GET-WORKING-HOURS-PROP.md) and [hmCal_GET WORKING HOUR LIST](../../commands/working-hours/hmCal_GET-WORKING-HOUR-LIST.md)

<a id="nummer_00009"></a>

## Version 6.0 (2015/07/22)

- 64 Bit Version for Mac (4D Server)
- New view: day user view
- New options for customize text styles with stylesheets in [hmCal_Apply Stylesheet](../../commands/stylesheets/hmCal_Apply-Stylesheet.md)
- New command [hmCal_Apply Stylesheet Ex](../../commands/stylesheets/hmCal_Apply-Stylesheet-Ex.md)
- Support of the Edit-Menu of 4D: new event for handling these standard events: *hmCal_OnEditMenu*
- Two new format options in [hmCal_SET FORMAT](../../commands/calendar-settings/hmCal_SET-FORMAT.md) for setting the format of the time line
- A lot of new properties to set in [hmCal_SET AREA PROPERTY](../../commands/areas/hmCal_SET-AREA-PROPERTY.md)
- Hierarchically multi day view with support of relations
- New commands [hmCal_Set User Property](../../commands/user/hmCal_Set-User-Property.md) and [hmCal_Get User Property](../../commands/user/hmCal_Get-User-Property.md) to have direct access to a user's properties
- New property in [hmCal_Set Column Property](../../commands/columns/hmCal_Set-Column-Property.md) for setting the word wrap of a column
- New colors to set in [hmCal_SET COLOR](../../commands/calendar-settings/hmCal_SET-COLOR.md)
- The command [hmCal_Add Special Day](../../commands/special-days/hmCal_Add-Special-Day.md) returns a reference, now. This is used to set color properties.

<a id="nummer_00010"></a>

## Version 5.3 (2015/04/10)

- Support of Drop event in the mini calendar
- New property in [hmCal_SET CALENDAR PROPERTY](../../commands/calendar/hmCal_SET-CALENDAR-PROPERTY.md) to set the auto update

<a id="nummer_00011"></a>

## Version 5.2 (2014/09/16)

- New command [hmCal_mini_GET LAST DEST](../../commands/mini-calendar/hmCal_mini_GET-LAST-DEST.md) to get more information about where the user has clicked
- New event *hmCal_WhileDragAppointment*. Important: You have to activate the event manually with [hmCal_SET EVENT STATE](../../commands/areas/hmCal_SET-EVENT-STATE.md)

<a id="nummer_00012"></a>

## Version 5.1 (2014/02/26)

- Support for icons in the month view
- New command [hmCal_SET USER ICON](../../commands/user/hmCal_SET-USER-ICON.md)
- Bugfixing

<a id="nummer_00013"></a>

## Version 5.0 (2013/10/17)

- Version 5.0 is only available for 4D v13.4 and above, certified for 4D v13 and 4D v14
- Native graphic support for 4D v14. Full support of 4D v14.
- Contains new internal graphical improvements and more speed
- New view: Year view
- New hmCal-area-properties: *hmCal_prop_MultiAreaHeight* and *hmCal_prop_ColumnTextOffsetV*
- New appointment properties: *hmCal_aprop_Textalignment*
- New commands for user time zone support: [hmCal_SET USER TIMEZONE](../../commands/user/hmCal_SET-USER-TIMEZONE.md), [hmCal_Get User Timezone](../../commands/user/hmCal_Get-User-Timezone.md) and [hmCal_Get User Timezone Off](../../commands/user/hmCal_Get-User-Timezone-Off.md)
- Native support of the vector format EMF on Windows
- The command [hmCal_Area To Picture File](../../commands/obsolete-commands/hmCal_Area-To-Picture-File.md) is obsolete. Please use [hmCal_Area To Picture](../../commands/areas/hmCal_Area-To-Picture.md) instead.
- Bugfixing

<a id="nummer_00014"></a>

## Version 4.4 (2013/02/13)

- Fixes a memory leak in the drawing engine. The bug only appeared on Windows.
- Bugfixing

<a id="nummer_00015"></a>

## Version 4.3 (2013/02/04)

- New color property: *hmCal_clr_Dayline*
- New area property: *hmCal_prop_AppRealloc*
- Fixes a bug in [hmCal_DELETE OFFSCREEN AREA](../../commands/areas/hmCal_DELETE-OFFSCREEN-AREA.md), where the memory was not deallocated.
- A bug was fixed, where 4D becomes unstable (or crash) could happen on Windows OS, if you put thousands of appointments in an offscreen area.
- Bugfixing

<a id="nummer_00016"></a>

## Version 4.2 (2012/12/04)

<a id="nummer_00017"></a>

### New

- Support of strikethrough text
- New commands for setting/getting special text for each day in the month view: [hmCal_SET SPECIAL DAY NAME](../../commands/special-days/hmCal_SET-SPECIAL-DAY-NAME.md), [hmCal_Get Special Day Name](../../commands/special-days/hmCal_Get-Special-Day-Name.md)
- New month view with week numbers
- Scrollable appointments in month view
- New appointment and area properties
- New color properties
- Bugfixing

<a id="nummer_00018"></a>

## Version 4.1 (2012/04/20)

<a id="nummer_00019"></a>

### New

- New command[hmCal_FILTER EVENT](../../commands/areas/hmCal_FILTER-EVENT.md) to filter following events
- Week numbers in the modern mini-calendar
- Bugfixing

<a id="nummer_00020"></a>

## Version 4.0 (2012/02/27)

<a id="nummer_00021"></a>

### New

- Version 4.0 is only available for 4D v12.3 and above, certified for 4D v12 and 4D v13
- Contains new internal graphical improvements and more speed
- Introducing the "resources view", which brings more overview about people and its appointments
- The command *hmCal_Area To Picture* was renamed to [hmCal_Area To Picture File](../../commands/obsolete-commands/hmCal_Area-To-Picture-File.md) to be more clearly, please check your code
- New command [hmCal_Area To Picture](../../commands/areas/hmCal_Area-To-Picture.md) to get the hmCal area into a picture variable
- The command *hmCal_Add Icon* was renamed to [hmCal_Add Icon File](../../commands/icons/hmCal_Add-Icon-File.md) to be more clearly, please check your code
- New command [hmCal_Add Icon](../../commands/icons/hmCal_Add-Icon.md) to create an icon from a picture variable
- Multistyle in Appointment Header and Appointment Body: [hmCal_Set App Property](../../commands/appointments/hmCal_Set-App-Property.md) -> hmCal_aprop_TextheaderMS, hmCal_aprop_TextbodyMS
- New events *hmCal_ClickMonthMore* and *hmCal_DoubleClickMonthMore* to control the new "more"-icon of the month view
- New command [hmCal_SET APP GRADIENT](../../commands/appointments/hmCal_SET-APP-GRADIENT.md) for setting a custom gradient for an appointment
- The mini calendar can be shown in different styles: classic and modern. See command [hmCal_mini_SET STYLE](../../commands/mini-calendar/hmCal_mini_SET-STYLE.md)
- New command [hmCal_SET USER LINE HEIGHT](../../commands/user/hmCal_SET-USER-LINE-HEIGHT.md) for setting a custom user line height in the user multi day view
- Added support for Print Form to print a hmCal area on a 4D form
- hmCal is now available as 64 bit version (Windows)

<a id="nummer_00022"></a>

## Version 3.0 (2009/11/26)

<a id="nummer_00023"></a>

### New

- Full Unicode support: Version 3.0 is only available for 4D v11.5 and above.
- Horizontal scrolling with the mouse wheel in all lists
- Enhanced project view:
- Enhanced user multi day view
- All obsolete commands are deleted from hmCal, please check your code
- New properties in [hmCal_Set App Property](../../commands/appointments/hmCal_Set-App-Property.md): *hmCal_aprop_HasSubApps*, *hmCal_aprop_Icon2* and *hmCal_aprop_Icon3*.
- Introducing the theme [System processes](../system-processes/System-processes.md). Now, you can find out, if you application is the frontmost application or not.
- Introducing the theme *Search*: visualisation of searches
- New command [hmCal_DELETE SPECIAL DAY](../../commands/special-days/hmCal_DELETE-SPECIAL-DAY.md).
- New commands to set and get more than one user to an appointment: [hmCal_SET APP USER LIST](../../commands/appointments/hmCal_SET-APP-USER-LIST.md) and [hmCal_GET APP USER LIST](../../commands/appointments/hmCal_GET-APP-USER-LIST.md).
- New commands to get all valid hmCal areas: [hmCal_GET AREA LIST](../../commands/areas/hmCal_GET-AREA-LIST.md), [hmCal_Is Area Valid](../../commands/areas/hmCal_Is-Area-Valid.md).

<a id="nummer_00024"></a>

## Version 2.3 (2009/07/29)

<a id="nummer_00025"></a>

### New

- New command [hmCal_GET SELECTED OCCURRENCES](../../commands/recurrence-appointments/hmCal_GET-SELECTED-OCCURRENCES.md).
- New commands [hmCal_SET VISIBLE SECONDS](../../commands/calendar-settings/hmCal_SET-VISIBLE-SECONDS.md) and [hmCal_Get Visible Seconds](../../commands/calendar-settings/hmCal_Get-Visible-Seconds.md).

<a id="nummer_00026"></a>

### Modifications

- New properties in [hmCal_Set App Property](../../commands/appointments/hmCal_Set-App-Property.md): *hmCal_aprop_Independent* and *hmCal_aprop_DrawAsRect*.
- The command [hmCal_GET RECURRENCE INFO](../../commands/recurrence-appointments/hmCal_GET-RECURRENCE-INFO.md) has a new parameter! **VERY IMPORTANT: please check your code!**.
- The commands [hmCal_SET VISIBLE HOURS](../../commands/obsolete-commands/hmCal_SET-VISIBLE-HOURS.md) and [hmCal_Get Visible Hours](../../commands/obsolete-commands/hmCal_Get-Visible-Hours.md) are now obsolete.
- Rendering optimizations under Mac 10.5.x
- Timezoneupdate

<a id="nummer_00027"></a>

## Version 2.2 (2009/01/20)

<a id="nummer_00028"></a>

### New

- New command [hmCal_GET OBJECT RECT](../../commands/calendar-settings/hmCal_GET-OBJECT-RECT.md).
- New commands [hmCal_SET FORMAT](../../commands/calendar-settings/hmCal_SET-FORMAT.md) and [hmCal_Get Format](../../commands/calendar-settings/hmCal_Get-Format.md).
- New timezone commands: [hmCal_Convert Timezone](../../commands/utilities/hmCal_Convert-Timezone.md) and [hmCal_GET SYSTEM TIMEZONE](../../commands/utilities/hmCal_GET-SYSTEM-TIMEZONE.md)
- Resizing of allday appointments in the month view

<a id="nummer_00029"></a>

### Modifications

- The command [hmCal_GET RECURRENCE INFO](../../commands/recurrence-appointments/hmCal_GET-RECURRENCE-INFO.md) calculates also recurrences of appointments which are not visible.
- The command [hmCal_SET AREA PROPERTY](../../commands/areas/hmCal_SET-AREA-PROPERTY.md) has two new selectors: *hmCal_prop_PrintingWidth* and *hmCal_prop_PrintingHeight* to set the printing size.
- The command [hmCal_Get Area Property](../../commands/areas/hmCal_Get-Area-Property.md) has a new selector *hmCal_prop_ProjectAreaHeight* to get the needed height of the projectarea.
- The command [hmCal_Set Column Property](../../commands/columns/hmCal_Set-Column-Property.md) has a new selector *hmCal_cprop_headeralignment* to set the alignment of the columnheader.
- Better support of iCalendar export and import
- Bugfixing
- Timezoneupdate

<a id="nummer_00030"></a>

## Version 2.1.1 (2009/01/09)

<a id="nummer_00031"></a>

### New

- The command [hmCal_Area To Picture](../../commands/areas/hmCal_Area-To-Picture.md) now supports the pdf format on macintosh.

<a id="nummer_00032"></a>

## Version 2.1 (2008/12/05)

<a id="nummer_00033"></a>

### New

- Columns are now resizeable by the user
- New commands to get and set the properties of columns: [hmCal_Set Column Property](../../commands/columns/hmCal_Set-Column-Property.md) and [hmCal_Get Column Property](../../commands/columns/hmCal_Get-Column-Property.md).
- The command [hmCal_Set App Property](../../commands/appointments/hmCal_Set-App-Property.md) has new properties.
- Columntexts can now wrap automatically
- The multi day area can be scrolled in the day and week views (See [hmCal_Set App Property](../../commands/appointments/hmCal_Set-App-Property.md)).
- New commands [hmCal_Set Scroll Range](../../commands/calendar-settings/hmCal_Set-Scroll-Range.md) and [hmCal_GET SCROLL RANGE](../../commands/calendar-settings/hmCal_GET-SCROLL-RANGE.md) to set the scrollable area in the day and week views.
- In the project view: A planned appointment can now have a second bar (time range) to show the current progress.
- New commands [hmCal_Set Column Cell Values](../../commands/columns/hmCal_Set-Column-Cell-Values.md) and [hmCal_Get Column Cell Values](../../commands/columns/hmCal_Get-Column-Cell-Values.md) to set and get multiple values of a column.
- Now you can set colors to each cell. New commands [hmCal_SET COLOR EX](../../commands/calendar-settings/hmCal_SET-COLOR-EX.md) and [hmCal_GET COLOR EX](../../commands/calendar-settings/hmCal_GET-COLOR-EX.md).
- The iCalendar export and import now supports the location ([hmCal_Set App Property](../../commands/appointments/hmCal_Set-App-Property.md) selector hmCal_aprop_Location).

<a id="nummer_00034"></a>

### Modifications

The command [hmCal_Set Column Titles](../../commands/obsolete-commands/hmCal_Set-Column-Titles.md) is obsolete.

<a id="nummer_00035"></a>

## Version 2.0 (2008/10/15)

<a id="nummer_00036"></a>

### New

- Rewritten drawing engine. hmCal now supports Quartz 2D natively instead of Quickdraw.
- New project view (See [hmCal_SET VIEW](../../commands/calendar-settings/hmCal_SET-VIEW.md): hmCal_ProjectView)
- Support of relations
- New global error entrypoint in the callback method
- Support of multiple calendars. See chapter [Calendar](../calendar/Calendar.md).
- Support of recurrence appointments
- Support of the iCalendar-Standard: See [hmCal_Import Appointments](../../commands/calendar/hmCal_Import-Appointments.md) und [hmCal_Export Appointments](../../commands/calendar/hmCal_Export-Appointments.md).
- Manage easily icons
- New command to set all colors: [hmCal_SET COLOR](../../commands/calendar-settings/hmCal_SET-COLOR.md)
- New command to set all properties of an appointment: [hmCal_Set App Property](../../commands/appointments/hmCal_Set-App-Property.md).
- Multiple columns in the user multi day view and project view.

<a id="nummer_00037"></a>

### Modifications

- The command [hmCal_Area To Picture](../../commands/areas/hmCal_Area-To-Picture.md) was rewritten and supports multiple native picture formats: jpg, png, bmp, gif und tiff
- Several command are now obsolete. See chapter: [Obsolete commands](../obsolete-commands/Obsolete-commands.md).

<a id="nummer_00038"></a>

## Version 1.9 (2008/02/19)

<a id="nummer_00039"></a>

### New

- New commands: [hmCal_OPTIMIZED FORMATS](../../commands/calendar-settings/hmCal_OPTIMIZED-FORMATS.md), [hmCal_Find Appointment By ID](../../commands/appointments/hmCal_Find-Appointment-By-ID.md), [hmCal_SET MONTH HEADER](../../commands/calendar-settings/hmCal_SET-MONTH-HEADER.md), [hmCal_Scroll To Date](../../commands/calendar-settings/hmCal_Scroll-To-Date.md), [hmCal_SET WORKING HOURS EX](../../commands/working-hours/hmCal_SET-WORKING-HOURS-EX.md)
- New placeholders for [date formats](../../commands/obsolete-commands/hmCal_SET-DATE-FORMAT.md)
- Overview about obsolete commands
- Bugfixes

<a id="nummer_00040"></a>

### Modifications

- The command [hmCal_SET AREA PROPERTY](../../commands/areas/hmCal_SET-AREA-PROPERTY.md) has new properties to set the grid-lines
- Now you get an expanded version number from [hmCal_Get Version](../../commands/areas/hmCal_Get-Version.md)

<a id="nummer_00041"></a>

## Version 1.8 (2007/12/06)

<a id="nummer_00042"></a>

### New

- Display of more than one day in the user day view. New command: [hmCal_SET DAYS PER USER](../../commands/user/hmCal_SET-DAYS-PER-USER.md).
- The multi day view and user multi day view can be scroll horizontally
- New commands: [hmCal_SET VISIBLE DAYS](../../commands/calendar-settings/hmCal_SET-VISIBLE-DAYS.md) and [hmCal_Get Visible Days](../../commands/calendar-settings/hmCal_Get-Visible-Days.md)
- New commands: [hmCal_SET VISIBLE WEEKS](../../commands/calendar-settings/hmCal_SET-VISIBLE-WEEKS.md) and [hmCal_Get Visible Weeks](../../commands/calendar-settings/hmCal_Get-Visible-Weeks.md) to display up to 28 weeks simultaneously in the month view.
- New commands: [hmCal_SET VISIBLE WEEKDAYS](../../commands/calendar-settings/hmCal_SET-VISIBLE-WEEKDAYS.md) and [hmCal_Get Visible Weekdays](../../commands/calendar-settings/hmCal_Get-Visible-Weekdays.md) to display only a few columns in the month view. For example monday to friday.
- New effect: Left bar. See chapter [hmCal_SET APPOINTMENT EFFECT](../../commands/obsolete-commands/hmCal_SET-APPOINTMENT-EFFECT.md) for details.

<a id="nummer_00043"></a>

### Modifications

- The commands [hmCal_ENABLE DELETE KEY](../../commands/obsolete-commands/hmCal_ENABLE-DELETE-KEY.md) and [hmCal_ALLOW DRAG NEW APPOINTMENT](../../commands/obsolete-commands/hmCal_ALLOW-DRAG-NEW-APPOINTMENT.md) are obsolete. Please use the command [hmCal_SET AREA PROPERTY](../../commands/areas/hmCal_SET-AREA-PROPERTY.md).
- The command [hmCal_SET AREA PROPERTY](../../commands/areas/hmCal_SET-AREA-PROPERTY.md) has new properties.

<a id="nummer_00044"></a>

## Version 1.7 (2007/10/23)

<a id="nummer_00045"></a>

### New

- New command [hmCal_mini_SET TIP](../../commands/mini-calendar/hmCal_mini_SET-TIP.md)
- New command [hmCal_Count Appointments](../../commands/appointments/hmCal_Count-Appointments.md)
- New commands [hmCal_Date2Seconds](../../commands/utilities/hmCal_Date2Seconds.md) and [hmCal_SECONDS2DATE](../../commands/utilities/hmCal_SECONDS2DATE.md)
- New command [hmCal_Scroll To User](../../commands/user/hmCal_Scroll-To-User.md)
- New commands: [hmCal_SET DATE FORMAT](../../commands/obsolete-commands/hmCal_SET-DATE-FORMAT.md) and [hmCal_SET TIME FORMAT](../../commands/obsolete-commands/hmCal_SET-TIME-FORMAT.md), to define your own formats
- Enhanced drawing if appointments are overlapped by other appointments
- Pixel accurately scrolling in user multi day view
- New properties
- The command [hmCal_SET AREA PROPERTY](../../commands/areas/hmCal_SET-AREA-PROPERTY.md) has new properties
- New command [hmCal_GetStringWidth](../../commands/utilities/hmCal_GetStringWidth.md)
- New events in the callback-method: hmCal_TryNewAppointment, hmCal_TryDragAppointment, hmCal_TryResizeAppointment
- New command to activate and deactivate events: [hmCal_SET EVENT STATE](../../commands/areas/hmCal_SET-EVENT-STATE.md), [hmCal_Get Event State](../../commands/areas/hmCal_Get-Event-State.md)

<a id="nummer_00046"></a>

### Modifications

- The command [hmCal_START ON MONDAY](../../commands/calendar-settings/hmCal_START-ON-MONDAY.md) has only effect in the month view. The multi-daily view do not have no more with monday or sunday to begin, but can freely set by the command [hmCal_SET START DATE](../../commands/calendar-settings/hmCal_SET-START-DATE.md).
- Parameters of the command [hmCal_DRAG AND DROP PROPERTIES](../../commands/areas/hmCal_DRAG-AND-DROP-PROPERTIES.md) has been changed. Now the command returns a pointer to the source variable.
- The command *hmCal_SET DATE FORMAT* was renamed to [hmCal_SET DATE 4D FORMAT](../../commands/calendar-settings/hmCal_SET-DATE-4D-FORMAT.md)
- The command *hmCal_SET TIME FORMAT* was renamed to [hmCal_SET TIME 4D FORMAT](../../commands/calendar-settings/hmCal_SET-TIME-4D-FORMAT.md)

Note: Make sure that you have renamed modified commands in your 4D-Code. To find all places, please compile your application before you call hmCal.

<a id="nummer_00047"></a>

## Version 1.6 (2007/06/15)

<a id="nummer_00048"></a>

### New

- Week-view becomes multi-daily view. Now up to 50 days can be indicated.
- New command: [hmCal_SET DAY RANGE](../../commands/calendar-settings/hmCal_SET-DAY-RANGE.md) replaces the old command [hmCal_SET DAYS PER WEEK](../../commands/obsolete-commands/hmCal_SET-DAYS-PER-WEEK.md)
- Now it is possible to mark more than one day. New commands: [hmCal_Add Special Day](../../commands/special-days/hmCal_Add-Special-Day.md) and [hmCal_DELETE ALL SPECIAL DAYS](../../commands/special-days/hmCal_DELETE-ALL-SPECIAL-DAYS.md) replaces the commands [hmCal_HIGHLIGHT DAY](../../commands/special-days/hmCal_HIGHLIGHT-DAY.md), [hmCal_Get Highlighted Day](../../commands/special-days/hmCal_Get-Highlighted-Day.md), [hmCal_SET HIGHLIGHT DAY COLOR](../../commands/obsolete-commands/hmCal_SET-HIGHLIGHT-DAY-COLOR.md) and [hmCal_GET HIGHLIGHT DAY COLOR](../../commands/obsolete-commands/hmCal_GET-HIGHLIGHT-DAY-COLOR.md).
- New area to show a mini-month-calendar beside the "Main-Calendar". Mini-Calendar; see chapter [Mini-calendar-introduction](../mini-calendar/Mini-calendar-introduction.md).
- New fading effect for appointments

<a id="nummer_00049"></a>

### Modifications

- The command hmCal_DIM APPOINTMENT was renamed to [hmCal_SET APPOINTMENT EFFECT](../../commands/obsolete-commands/hmCal_SET-APPOINTMENT-EFFECT.md).
- New properties in [hmCal_SET AREA PROPERTY](../../commands/areas/hmCal_SET-AREA-PROPERTY.md): *hmCal_prop_NewLineHeight* and *hmCal_prop_DefaultEffect*.

<a id="nummer_00050"></a>

## Version 1.5 (2007/06/04)

<a id="nummer_00051"></a>

### New

- Universal binary support (Intel Mac support)
- New command: [hmCal_SET TIME 4D FORMAT](../../commands/calendar-settings/hmCal_SET-TIME-4D-FORMAT.md)
- Display time if the user drag an appointment in the user-week view

<a id="nummer_00052"></a>

### Modifications

With the following commands, you can define the color, if the user drags a new appointment in the area.

- [hmCal_SET APPOINTMENT FORECOLOR](../../commands/obsolete-commands/hmCal_SET-APPOINTMENT-FORECOLOR.md)
- [hmCal_SET APPOINTMENT BACKCOLOR](../../commands/obsolete-commands/hmCal_SET-APPOINTMENT-BACKCOLOR.md)
- [hmCal_SET APPOINTMENT TEXTCOLOR](../../commands/obsolete-commands/hmCal_SET-APPOINTMENT-TEXTCOLOR.md)
- [hmCal_SET APPOINTMENT HEADERCOLOR](../../commands/obsolete-commands/hmCal_SET-APPOINTMENT-HEADERCOLOR.md)

[hmCal_Add User](../../commands/user/hmCal_Add-User.md) now returns an error if the user id already exists.

- [hmCal_Add User](../../commands/user/hmCal_Add-User.md)

<a id="nummer_00053"></a>

## Version 1.4 (2007/04/02)

- No release notes

<a id="nummer_00054"></a>

## Version 1.3 (2007/03/09)

- No release notes

<a id="nummer_00055"></a>

## Version 1.2 (2007/02/07)

- No release notes

<a id="nummer_00056"></a>

## Version 1.1 (2007/01/26)

- No release notes

<a id="nummer_00057"></a>

## Version 1.0 (2007/01/18)

- No release notes
