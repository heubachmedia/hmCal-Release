[Appointments](../../guides/category-pages/appointments.md)

# hmCal_GET SELECTED APPOINTMENTS

`hmCal_GET SELECTED APPOINTMENTS(area;appointments)`

```
Parameter          Type             Description
area              Longint       -> hmCal area
appointments      Longint-Array <- array with appointments-ids
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET SELECTED APPOINTMENTS*** fills the longint-array *appointments* with all selected appointments of the calender.

To select appointments use the command [hmCal_SELECT APPOINTMENTS](hmCal_SELECT-APPOINTMENTS.md).

<a id="nummer_00002"></a>

## Example

The following example returns all selected appointments:

```4d
C_LONGINT($vl_countApp)

ARRAY LONGINT($tl_appIDs;0)

hmCal_GET SELECTED APPOINTMENTS(hmCal;$tl_appIDs)

$vl_countApp:=Size of Array($tl_appIDs)
```
