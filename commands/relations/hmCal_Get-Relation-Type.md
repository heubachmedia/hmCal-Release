[Relations](../../guides/category-pages/relations.md)

# hmCal_Get Relation Type

`hmCal_Get Relation Type(area;reference) -> type`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | reference |
| type | Longint | <- | relationtype |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Relation Type*** returns the type of a relation defined by the parameter *reference*.

<a id="nummer_00002"></a>

## Example

The following example returns the type of the relation with the id *781*:

```4d
C_LONGINT($vl_type)

$vl_type:=hmCal_Get Relation Type (hmCal;781)
```
