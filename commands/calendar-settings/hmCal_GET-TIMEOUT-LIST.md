[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_GET TIMEOUT LIST

`hmCal_GET TIMEOUT LIST(area;date_from;time_from;date_to;time_to)`

```4d
Parameter          Type             Description
area               Longint      ->  hmCal area
date_from          ARRAY DATE   <-  Date from
time_from          ARRAY LONGINT<-  Time from
date_to            ARRAY DATE   <-  Date to
time_to            ARRAY LONGINT<-  Time to
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET TIMEOUT LIST*** returns the time out list of the current area.

<a id="nummer_00002"></a>

## Example

The following example returns the list with all time outs:

```4d
ARRAY DATE($td_arrayDateFrom;0)
ARRAY LONGINT($tl_arrayTimeFrom;0)
ARRAY DATE($td_arrayDateTo;0)
ARRAY LONGINT($tl_arrayTimeTo;0)

hmCal_GET TIMEOUT LIST($vl_area;$td_arrayDateFrom;$tl_arrayTimeFrom;$td_arrayDateTo;$tl_arrayTimeTo)
```
