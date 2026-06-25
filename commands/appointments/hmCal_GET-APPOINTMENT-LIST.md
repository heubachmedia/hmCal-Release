[Appointments](../../guides/category-pages/appointments.md)

# hmCal_GET APPOINTMENT LIST

`hmCal_GET APPOINTMENT LIST(area;calendar;array)`

```
Parameter          Type              Description
area               Longint       ->  hmCal area
calendar           Longint       ->  calendar reference or 0
array              Longint-Array <-  array with
                                     appointment id's
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET APPOINTMENT LIST*** returns an array with all appointment id's of a calendar, defined by the parameter *calendar*. Notice: The standard calendar has the id *-1*.

To get all appointments of all calendars, just pass *0* in the parameter *calendar*.

<a id="nummer_00002"></a>

## Example

The following example returns an array with all appointment id's of the calendar with the id *1*:

```4d
ARRAY LONGINT($tl_ids;0)

hmCal_GET APPOINTMENT LIST (hmCal;1;$tl_ids)
```
