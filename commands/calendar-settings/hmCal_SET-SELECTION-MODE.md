[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET SELECTION MODE

`hmCal_SET SELECTION MODE(area;mode)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| mode | Longint | -> | selection mode |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET SELECTION MODE*** changes the selection mode of the calendar. There are three modes:

- 0 = no appointment selectable
- 1 = only one appointment selectable
- 2 = more than one appointment selectable

The default setting of the calendar is *2*.

Independent from the selection mode, appointments can be selected with the command [hmCal_SELECT APPOINTMENTS](../appointments/hmCal_SELECT-APPOINTMENTS.md)

<a id="nummer_00002"></a>

## Example

The following example changes the selection mode. Now you can select multiple appointments.

```4d
hmCal_SET SELECTION MODE(hmCal;1)
```
