[Areas](../../guides/category-pages/areas.md)

# hmCal_GET OLD TIMERANGE

`hmCal_GET OLD TIMERANGE(area;date1;time1;date2;time2;allday;userList)`

```
Parameter          Type             Description
Bereich            Longint      ->  hmCal Bereich
date1              Datum        <-  from date
time1              Longint      <-  from time
date2              Datum        <-  to date
time2              Longint      <-  to time
allday             Longint      <-  all day flag
userList           Array Longint <-  user list
```

<a id="nummer_00001"></a>

## Beschreibung

With the command ***hmCal_GET OLD TIMERANGE*** you can get the origin timerange of the appointment within the callback method, installed by [hmCal_INSTALL CALLBACK](hmCal_INSTALL-CALLBACK.md).

The command only work with following events:

- hmCal_DragAppointment (2)
- hmCal_ResizeAppointment (3)
