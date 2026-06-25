[Appointments](../../guides/category-pages/appointments.md)

# hmCal_SET GROUP PROPERTY

`hmCal_SET GROUP PROPERTY (area;groupID;property;propReal)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| groupID | Longint | -> | group reference |
| property | Longint | -> | property |
| propReal | Real | -> | property number |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET GROUP PROPERTY*** sets a property for a group created by [hmCal_Add Group](hmCal_Add-Group.md).

<a id="nummer_00002"></a>

### hmCal_gprop_Shift (1)

Set *propReal* to *1* to activate an automatically shift of connected appointments. Default value is *0*.
