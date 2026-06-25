[Appointments](../../guides/category-pages/appointments.md)

# hmCal_DELETE GROUP

`hmCal_DELETE GROUP(area;group)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| group | Longint | -> | group reference |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_DELETE GROUP*** deletes a group by reference, created by the command [hmCal_Add Group](hmCal_Add-Group.md). If you pass a *0* as reference, all groups will be deleted.

<a id="nummer_00002"></a>

## Example

The following example delete the group with the reference 2:

```4d
hmCal_DELETE GROUP($vl_area;2)
```
