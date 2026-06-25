[Calendar](../../guides/category-pages/calendar.md)

# hmCal_Import Appointments

`hmCal_Import Appointments (area;content;calendar) = error`

```
Parameter          Typ              Beschreibung
area               Longint      ->  hmCal area
content            Blob         ->  iCalendar-Blob
calendar           Longint      ->  calendar reference
error              Longint      <-  error code
```

## Contents

- [1 Description](#nummer_00001)
- [2 Error codes](#nummer_00002)
- [3 Example](#nummer_00003)

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Import Appointments*** imports a iCalendar document. iCalendar is a standard of calendar information exchange.

In the parameter *calendar* you must pass the calendar id, in which the appointments are created.

*Important: You must set the current timezone with the command [hmCal_Set Timezone](../areas/hmCal_Set-Timezone.md) before calling this command.*

Further information about the icalendar standard:

[http://en.wikipedia.org/wiki/ICalendar](http://en.wikipedia.org/wiki/ICalendar)

<a id="nummer_00002"></a>

## Error codes

```
parse_error_calendar_tag_already_open              -1001
parse_error_event_tag_already_open                 -1002
parse_error_incorrect_datetime                     -1003
parse_error_incorrect_datetime_length              -1004
parse_error_calendar_tag_not_open                  -1005
parse_error_event_tag_not_open                     -1006
parse_error_event_tag_not_closed                   -1007
parse_error_incorrect_duration                     -1008
parse_error_incorrect_from_time                    -1009
parse_error_incorrect_duration_of_appointment      -1010
parse_error_calendar_tag_not_closed                -1011
parse_error_conversation                           -1012
parse_error_timezone_tag_not_open                  -1013
parse_error_timezoneoffset_tag_not_open            -1014
parse_error_incorrect_tzoffset                     -1015
parse_error_timezone_not_set                       -1016
parse_error_incorrect_timezone                     -1017
```

<a id="nummer_00003"></a>

## Example
