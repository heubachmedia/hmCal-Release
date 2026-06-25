[Working Hours](../../guides/category-pages/working-hours.md)

# hmCal_GET WORKING HOUR LIST

`hmCal_GET WORKING HOUR LIST(area;userID;workingHoursIDs)`

```
Parameter          Type             Description
area               Longint       ->  hmCal area
userID             Longint       ->  user reference or 0
workingHoursIDs    Array-Longint <-  Working hours List
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET WORKING HOUR LIST*** returns a list with all working hours. Pass an empty ARRAY LONGINT in the parameter *workingHoursIDs* which will be filled by all working hours of the hmCal area. If you pass the user reference in *userID* you will get the working hours of the user. If you pass 0 in *userID*, you will get the working hours except the user working hours.

<a id="nummer_00002"></a>

## Example

The following example returns the list of all working hours (except user working hours):

```4d
ARRAY LONGINT ($tl_workingHoursIDs;0)
hmCal_GET WORKING HOUR LIST($hmCal;0;$tl_workingHoursIDs)
```
