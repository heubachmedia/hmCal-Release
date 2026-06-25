[Areas](../../guides/category-pages/areas.md)

# hmCal_SET DRAG TIMERANGE

`hmCal_SET DRAG TIMERANGE(area;date1;time1;date2;time2)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| date1 | Date | -> | from date |
| time1 | Longint | -> | from time |
| date2 | Date | -> | till date |
| time2 | Longint | -> | till time |

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_SET DRAG TIMERANGE*** you can define the timerange, in wich an appointment can be moved. The command only has an effect, if its called within the callback method, installed by [hmCal_INSTALL CALLBACK](hmCal_INSTALL-CALLBACK.md) and the following events:

- hmCal_TryNewAppointment (11)
- hmCal_TryDragAppointment (12)
- hmCal_TryResizeAppointment (13)
