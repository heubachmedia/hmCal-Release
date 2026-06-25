[Calendar](../../guides/category-pages/calendar.md)

# hmCal_Export Appointments

`hmCal_Export Appointments (area;calendar;content) = error`

```
Parameter          Typ              Beschreibung
Bereich            Longint      ->  hmCal Bereich
calendar           Longint      ->  calendar reference
content            Blob         <-  iCalendar-Blob
error              Longint      <-  error code
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Export Appointments*** exports all appointments of the calendar, defined by the parameter *calendar*. If you want to export all appointments of all calendars, just pass *0* in the parameter *calendar*.

*Important: You must set the current timezone with the command [hmCal_Set Timezone](../areas/hmCal_Set-Timezone.md) before calling this command.*

Further information about the icalendar standard:

[http://en.wikipedia.org/wiki/ICalendar](http://en.wikipedia.org/wiki/ICalendar)

<a id="nummer_00002"></a>

## Excample

The following example exports the standard calendar with the id *-1*:

```4d
C_LONGINT($vl_area;$vl_error)

$vl_area:=hmCal_New Offscreen Area (100;100)
$vl_error:=hmCal_Set Timezone ($vl_area;"Europe/Berlin")
$vl_error:=hmCal_Add Appointment ($vl_area;1;"Appointment";"";0;Current date;18:30:00+0;Current date;20:00:00+0;2)
$vl_error:=hmCal_Export Appointments ($vl_area;-1;$vx_blob)
hmCal_DELETE OFFSCREEN AREA ($vl_area)
```
