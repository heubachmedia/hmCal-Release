[Special days](../../guides/category-pages/special-days.md)

# hmCal_DELETE SPECIAL DAY

`hmCal_DELETE SPECIAL DAY(area;date)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| date | Date | -> | date |

<a id="nummer_00001"></a>

## Beschreibung

The command ***hmCal_DELETE SPECIAL DAY*** deletes a highlighted day in the hmCal area.

<a id="nummer_00002"></a>

## Example

Thw following example deletes the current day, so the date is not highlighted anymore:

```4d
hmCal_DELETE SPECIAL DAY(hmCal;Current Date)
```
