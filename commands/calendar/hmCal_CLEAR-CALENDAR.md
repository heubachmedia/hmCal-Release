[Calendar](../../guides/category-pages/calendar.md)

# hmCal_CLEAR CALENDAR

`hmCal_CLEAR CALENDAR (area;reference)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | reference |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_CLEAR CALENDAR*** deletes all appointments of a calendar.

<a id="nummer_00002"></a>

## Example

The following example deletes all appointments of the calendar with the ID *2*:

```4d
hmCal_CLEAR CALENDAR(hmCal;2)
```
