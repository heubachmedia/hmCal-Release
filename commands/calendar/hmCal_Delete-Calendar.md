[Calendar](../../guides/category-pages/calendar.md)

# hmCal_Delete Calendar

`hmCal_Delete Calendar (area;reference) = Fehlernummer`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | calendar reference id |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Delete Calendar*** deletes the calendar with all its appointments.

<a id="nummer_00002"></a>

## Example

The following example deletes the calendar with the id *2*:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Delete Calendar (hmCal;2)
```
