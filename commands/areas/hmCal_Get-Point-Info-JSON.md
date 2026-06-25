[Areas](../../guides/category-pages/areas.md)

# hmCal_Get Point Info JSON

`hmCal_Get Point Info JSON(area;x;y;json)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| x | Longint | -> | x-Koordinate |
| y | Longint | -> | y-Koordinate |
| json | Text | <- | infomation as JSON |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Point Info JSON*** gets information about a given point. For example, you can get the user or appointment under the current mouse position. You must set the point in the parameters *x* and *y*. If you pass in both coordinates a value of *0*, hmCal takes the latest click coordinates!

In the JSON you will get the following properties:

- destination (C_LONGINT): clicked area. for a list of values see [hmCal_GET LAST DESTINATION](../calendar-settings/hmCal_GET-LAST-DESTINATION.md)
- date (C_TEXT): date in the format YYYYMMDD
- time (C_LONGINT): time in seconds
- fullday (C_BOOLEAN): true/false
- user_reference (C_LONGINT)
- column_reference (C_LONGINT)
- appointment_reference (C_LONGINT): clicked appointment
- appointment_line_reference (C_LONGINT): in the project view; the selected appointment line (not only the appointment bar)
