[Recurrence Appointments](../../guides/category-pages/recurrence-appointments.md)

# hmCal_SET EXDATE LIST

`hmCal_SET EXDATE LIST (area;reference;list)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
reference          Longint      ->  appointment reference
list               Longintarray ->  list of 
                                    exceptions
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET EXDATE LIST*** defines an exception list of recurrence appointments. Just pass a longint array in the parameter *list* with unix timestamps. You can create these timestamps with the command [hmCal_Date2Seconds](../utilities/hmCal_Date2Seconds.md).
