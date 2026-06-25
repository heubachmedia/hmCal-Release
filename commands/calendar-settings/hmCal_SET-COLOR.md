[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET COLOR

`hmCal_SET COLOR(area;type1;type2;red;green;blue)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| type1 | Longint | -> | object type |
| type2 | Longint | -> | reference or 0 |
| red | Longint | -> | red color component |
| green | Longint | -> | green color component |
| blue | Longint | -> | blue color component |

*Notice: This command is obsolete in version 7.0. Please use [hmCal_SET COLOR NEW](hmCal_SET-COLOR-NEW.md)!*

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_SET COLOR*** you can set all colors of a hmCal area. The parameter *type1* defines the object type. The parameter *type2* is depending on the object type. It's a reference or a value of *0*. You must set the color in three components *red*, *green* and *blue*. All color components are 16 bit values. If you pass in one of the three color components the value of *-1*, the standard color is used.

**Notice: Some selectors need a *type3*. Please call the command [hmCal_SET COLOR NEW](hmCal_SET-COLOR-NEW.md) instead.**

The following object types are valid:

- 1 background, *type2* is always *0*
- 2 working hours, *type2* is always *0*
- 3 selection color of appointments, *type2* is always *0*
- 4 background of new appointments, *type2* is always *0*
- 5 foreground of new appointments, *type2* is always *0*
- 6 headertext color of new appointments, *type2* is always *0*
- 7 descriptiontext color of new appointments, *type2* is always *0*
- 8 alternative background in project view, *type2* is always *0*
- 9 relation color, *type2* is always *0*
- 10 description color, *type2* is always *0*
- 11 hourline color, *type2* is always *0*
- 12 halfhourline color, *type2* is always *0*
- 13 background of an appointment, *type2* is the reference of the appointment or *0* for all appointments
- 14 foreground of an appointment, *type2* is the reference of the appointment or *0* for all appointments
- 15 headertext of an appointment, *type2* is the reference of the appointment or *0* for all appointments
- 16 descriptiontext of an appointment, *type2* is the reference of the appointment or *0* for all appointments
- 17 userbackground, *type2* is the reference of the user or *0* for all users
- 18 column background, *type2* is the reference of the column or *0* for all columns
- 19 column text, *type2* is the reference of the column or *0* for all columns
- 20 column header text, *type2* is the reference of the column or *0* for all columns
- 21 current time line, *type2* is always *0*
- 22 background of an appointment (current bar/only project view), *type2* is the reference of the appointment or *0* for all appointments
- 23 foreground of an appointment (current bar/only project view), *type2* is the reference of the appointment or *0* for all appointments
- 24 headertext of an appointment (current bar/only project view), *type2* is the reference of the appointment or *0* for all appointments
- 25 descriptiontext of an appointment (current bar/only project view), *type2* is the reference of the appointment or *0* for all appointments
- 26 cell textcolor, *type2* is the reference of the column and *type3* is the reference of the cell. To pass the parameter *type3* you must call the command [hmCal_SET COLOR EX](hmCal_SET-COLOR-EX.md) instead.
- 27 cell backgroundcolor, *type2* is the reference of the column and *type3* is the reference of the cell. To pass the parameter *type3* you must call the command [hmCal_SET COLOR EX](hmCal_SET-COLOR-EX.md) instead.
- 28 calendar-framecolor, *type2* is always *0*
- 29 column-line-color, *type2* is always *0*
- 30 day line color in the project- and user-multi-day-view, *type2* is always *0*
- 31 Color of the hours in the time line, *type2* is always *0*
- 32 frame color of an appointment, *type2* is the reference of the appointment or *0* for all appointments
- 33 frame color of new appointments
- 34 header color of the user, *type2* is the reference of the user or *0* for all users
- 35 bullet color of an appointment in the month view, *type2* is the reference of the appointment or *0* for all appointments
- 36 user header text, *type2* is the user reference or *0* for all users
- 37 special day background color, *type2* is the special day reference or *0* for all special days
- 38 special day text color, *type2* is the special day reference or *0* for all special days
- 39 special day header background color, *type2* is the special day reference or *0* for all special days
- 40 working hours text color, *type2* is the working hours reference.
- 41 time indicator label background color, *type2* is always *0*
- 42 time indicator label frame color, *type2* is always *0*
- 43 time indicator label text color, *type2* is always *0*
- 44 inverted header text color for new appointments, *type2* is always *0*
- 45 inverted description text color for new appointments, *type2* is always *0*
- 46 inverted header text color, *type2* is always *0*
- 47 inverted description text color, *type2* is always *0*
- 48 text color of the time line, *type2* is always *0*

**Notice: You can use predefined [Constants](../../guides/appendix/Constants.md)!**
