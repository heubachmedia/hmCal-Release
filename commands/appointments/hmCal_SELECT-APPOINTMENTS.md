[Appointments](../../guides/category-pages/appointments.md)

# hmCal_SELECT APPOINTMENTS

`hmCal_SELECT APPOINTMENTS(area;appointment;operation)`

```
Parameter          Type             Description
area              Longint       -> hmCal area
appointment       Longint-Array -> array with appointment-ids
operation         Longint       -> operation to apply
```

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_SELECT APPOINTMENTS*** you can select appointments in the calendar. The command does **not** consider the selection mode.

With the help of the operation parameter, you can specify, how the array is to be applied to the selection. The following operations are possible:

- 0 = replace selection
- 1 = add to selection
- 2 = remove from selection

To get an array of selected appointments, use the command [hmCal_GET SELECTED APPOINTMENTS](hmCal_GET-SELECTED-APPOINTMENTS.md).

<a id="nummer_00002"></a>

## Example

The following example selects three appointments:

```4d
ARRAY LONGINT($tl_appIDs;3)

$tl_appIDs{1}:=895
$tl_appIDs{2}:=741
$tl_appIDs{3}:=127

hmCal_SELECT APPOINTMENTS(hmCal;$tl_appIDs;0)
```
