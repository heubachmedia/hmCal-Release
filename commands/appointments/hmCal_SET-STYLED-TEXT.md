[Appointments](../../guides/category-pages/appointments.md)

# hmCal_SET STYLED TEXT

`hmCal_SET STYLED TEXT(area;type;reference;styledText)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| type | Longint | -> | type |
| reference | Longint | -> | appointment reference |
| styledText | Text | -> | Styled text |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET STYLED TEXT*** sets a styled text to an appointment. Pass one of the following types in the parameter *type*:

- 1=Appointment header text
- 2=Appointment description text
- 3=Appointment tip text (not supported in 4D v13 and above)

Pass an appointment reference into *reference*.

In *styledText* you can pass directly the styled text generated from the multi-styled text field from 4D (with SPAN-tags).
