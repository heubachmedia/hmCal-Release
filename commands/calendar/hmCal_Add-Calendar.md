[Calendar](../../guides/category-pages/calendar.md)

# hmCal_Add Calendar

`hmCal_Add Calendar (area;reference) = error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | calendar reference id |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Add Calendar*** creates a new calendar. The parameter *reference* is your own internal calendar number.

**Notice: The reference of the standard calendar is *-1* and cannot be deleted**.

<a id="nummer_00002"></a>

## Example

The following example creates a new calendar:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Add Calendar (hmCal;1)
```
