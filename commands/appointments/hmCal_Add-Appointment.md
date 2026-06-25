[Appointments](../../guides/category-pages/appointments.md)

# hmCal_Add Appointment

`hmCal_Add Appointment(area;ref;headertext;descriptiontext;fullday;date1;time1;date2;time2;userid) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| ref | Longint | -> | appointment reference id |
| headertext | Text | -> | headertext |
| descriptiontext | Text | -> | descriptiontext |
| fullday | Longint | -> | 0=no full day, 1=full day |
| date1 | Date | -> | from date |
| time1 | Longint | -> | from time |
| date2 | Date | -> | till date |
| time2 | Longint | -> | till time |
| userid | Longint | -> | user reference id |
| error | Longint | <- | error-code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Add Appointment*** creates a new appointment in the calendar definied by the parameter *area*. Typically you call this command in the callback-method if the event *hmCal_UpdateAppointments* is released (see chapter [hmCal_INSTALL CALLBACK](../areas/hmCal_INSTALL-CALLBACK.md)).

In the parameter *ref* you pass your internal, unique number of the appointment. Over this number the appointments can be identified later clearly.

In the parameters *headertext* and *descriptiontext* you pass the designations of the appointment. The header text is usually only single-line represented.

The parameter *fullday* defines if the appointment is a full day appointment. This is then represented accordingly.

In the parameters *date1*, *time1*, *date2* and *time2* you pass the time range of the appointment. This period can cover also several days. Important: If you pass a time variable, you need to add a *+0* behind the variable, because 4D automatically converts the time variable into a longint variable.

In the parameter *userid* you pass the number of the user reference id. This is necessary only if you use the use-day/week view of the calendar. Otherwise you can set the parameter to *0*.

<a id="nummer_00002"></a>

## Example

The following example creates a full day appointment:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Add Appointment (hmCal;11;"Meeting";"Mr. Smith has a  training at a customer!";1;Current date;0;Current date;0;2)
```
