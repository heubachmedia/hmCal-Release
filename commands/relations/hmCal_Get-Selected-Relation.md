[Relations](../../guides/category-pages/relations.md)

# hmCal_Get Selected Relation

`hmCal_Get Selected Relation(area) -> reference`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | <- | reference |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Selected Relation*** returns the current selected relation. If no relation is selected, a *0* is returned.

<a id="nummer_00002"></a>

## Example

The following example returns the current selected relation:

```4d
C_LONGINT($vl_releation)

$vl_releation:=hmCal_Get Selected Relation (hmCal)
```
