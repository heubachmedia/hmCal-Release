[Relations](../../guides/category-pages/relations.md)

# hmCal_Select Relation

`hmCal_Select Relation(area;reference) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | reference |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Select Relation*** selects a relation in the calendar. If you want to deselect all relations, you must set *0* into the parameter *reference*. In this case, no relation is selected.

<a id="nummer_00002"></a>

## Example

The following example selects a relation with the reference *12*:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Select Relation (hmCal;12)
```
