[Calendar](../../guides/category-pages/calendar.md)

# hmCal_SET CALENDAR PROPERTY

`hmCal_SET CALENDAR PROPERTY (area;calendar;property;propLong;propText)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| calendar | Longint | -> | calendar reference |
| property | Longint | -> | property number |
| propLong | Longint | -> | property longint |
| propText | Text | -> | property text |

## Contents

- [1 Description](#nummer_00001)
- [2 Properties](#nummer_00002)
  - [2.1 hmCal_vprop_Visible (1)](#nummer_00003)
  - [2.2 hmCal_vprop_UpdateAppointments (2)](#nummer_00004)

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET CALENDAR PROPERTY*** sets a property for a calendar.

<a id="nummer_00002"></a>

## Properties

<a id="nummer_00003"></a>

### hmCal_vprop_Visible (1)

Pass in *propLong* a *1* and any appointments within the calendar are visible. Pass in *propLong* a *0* and any appointments within the calendar are invisible.

<a id="nummer_00004"></a>

### hmCal_vprop_UpdateAppointments (2)

If you pass in *propLong* a *1*, the calendar will be included in the automatic auto-update of the command [hmCal_UPDATE APPOINTMENTS](../appointments/hmCal_UPDATE-APPOINTMENTS.md). The calendar is also included in the update machanism of the event *hmCal_UpdateAppointments*.
