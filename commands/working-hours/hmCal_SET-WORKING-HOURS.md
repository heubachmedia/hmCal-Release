[Working Hours](../../guides/category-pages/working-hours.md)

# hmCal_SET WORKING HOURS

`hmCal_SET WORKING HOURS(area;timeFrom;timeTill)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| timeFrom | Longint | -> | working time from |
| timeTill | Longint | -> | working time till |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET WORKING HOURS*** sets the current working hours defined by the parameters *timeFrom* and *timeTill*. Working hours are highlighted in the calendar.

If you have different days and/or users with different working hours, you can use the command [hmCal_SET WORKING HOURS EX](hmCal_SET-WORKING-HOURS-EX.md).

<a id="nummer_00002"></a>

## Example

The following example sets the working hours to 8am till 6pm:

```4d
hmCal_SET WORKING HOURS(hmCal;?08:00:00?+0;?18:00:00?+0)
```
