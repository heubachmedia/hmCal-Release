[Search](../../guides/category-pages/search.md)

# hmCal_DELETE FROM SEARCH

`hmCal_DELETE FROM SEARCH (area;appointmentID)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
appointmentID      Longint      ->  Appointment reference or
                                    0 for all appointments
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_DELETE FROM SEARCH*** removes an appointment from the current search. If you pass a valid appointment reference in the parameter *appointmentID*, the appointment will be removed from the search. If you pass *0* all appointments will removed from the current search.

<a id="nummer_00002"></a>

## Example

The following example removes all appointments from the current search mode and exists the search mode:

```4d
hmCal_DELETE FROM SEARCH (calarea;3)
hmCal_SET SEARCHMODE (calarea;0)
```
