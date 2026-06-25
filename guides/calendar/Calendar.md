[Calendar](../category-pages/calendar.md)

# Calendar

Version 2.0 of hmCal can support multiple calendars. This means, that you can display external calendars very easily beside the standard calendar.

Every hmCal area has one calendar where you can display manually appointments. You can create these appointments with the callback method and the command [hmCal_Add Appointment](../../commands/appointments/hmCal_Add-Appointment.md).

Beside the standard calendar you can display external calendars with the commands [hmCal_Add Calendar](../../commands/calendar/hmCal_Add-Calendar.md) and [hmCal_Import Appointments](../../commands/calendar/hmCal_Import-Appointments.md).

**Notice: The standardcalendar has the reference *-1* and cannot be deleted.**

<a id="nummer_00001"></a>

## Behavior of hmCal_UpdateAppointments

If the event *hmCal_UpdateAppointments* is called, all appointments will be deleted by hmCal and you have to create new appointments in the area.

This happen for appointments only, which are in a calendar which has the option *hmCal_vprop_UpdateAppointments* on.

By default, only the calendar with the ID -1 has this option on.
