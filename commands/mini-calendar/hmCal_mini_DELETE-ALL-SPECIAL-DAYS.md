[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_DELETE ALL SPECIAL DAYS

`hmCal_mini_DELETE ALL SPECIAL DAYS(area)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal-mini area |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_DELETE ALL SPECIAL DAYS*** deletes all marked dates, which where created by the command [hmCal_mini_ADD SPECIAL DAY](hmCal_mini_ADD-SPECIAL-DAY.md).

<a id="nummer_00002"></a>

## Example

The following example deselects all marked days:

```4d
hmCal_mini_DELETE ALL SPECIAL DAYS(hmCalmini)
```
