[Relations](../../guides/category-pages/relations.md)

# hmCal_Set Relation Type

`hmCal_Set Relation Type(area;reference;type) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | reference |
| type | Longint | -> | relationtype |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Set Relation Type*** sets the relation type for an existing relation you already have created with [hmCal_Add Relation](hmCal_Add-Relation.md).

The parameter *type* defines one of four releation types:

- 1 = end to begin
- 2 = begin to begin
- 3 = end to end
- 4 = begin to end

Read more about relationtypes in chapter [Relations](../../guides/relations/Relations.md).

You can also use predefined [Constants](../../guides/appendix/Constants.md):

```4d
hmCal_rel_EndToBegin           1
hmCal_rel_BeginToBegin         2
hmCal_rel_EndToEnd             3
hmCal_rel_BeginToEnd           4
```

<a id="nummer_00002"></a>

## Example

The following example sets a new type for an existing relation:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Set Relation Type (hmCal;781;hmCal_rel_EndToEnd)
```
