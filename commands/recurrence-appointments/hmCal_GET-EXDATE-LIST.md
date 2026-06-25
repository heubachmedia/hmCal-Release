[Recurrence Appointments](../../guides/category-pages/recurrence-appointments.md)

# hmCal_GET EXDATE LIST

`hmCal_GET EXDATE LIST (area;reference;list)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
reference          Longint      ->  appointment reference
list               Longintarray <-  list of 
                                    exceptions
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET EXDATE LIST*** returns an array with all exception timestamps for an recurrence appointment.

See chapter: [hmCal_SET EXDATE LIST](hmCal_SET-EXDATE-LIST.md).
