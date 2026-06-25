[Relations](../../guides/category-pages/relations.md)

# hmCal_Delete Relation

`hmCal_Delete Relation(area;reference) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | reference |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Delete Relation*** deletes a relation. You must have created the relation with the command [hmCal_Add Relation](hmCal_Add-Relation.md).

<a id="nummer_00002"></a>

## Example

The following example creates a new relation and deletes the relation:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Add Relation (hmCal;1;89;256;1)
$vl_error:=hmCal_Delete Relation (hmCal;1)
```
