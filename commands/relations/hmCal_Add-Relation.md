[Relations](../../guides/category-pages/relations.md)

# hmCal_Add Relation

`hmCal_Add Relation(area;reference;from;to;type) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | reference |
| from | Longint | -> | from appointment |
| to | Longint | -> | to appointment |
| type | Longint | -> | relationtype |
| error | Longint | <- | error code |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Add Relation*** creates a new relation between two appointments. You must set your own unique reference number into the parameter *reference*. You must pass the appointment references into the parameters *from* and *to*. The parameter *type* defines one of four releation types:

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

Releations are only visible in the project view.

<a id="nummer_00002"></a>

## Example

The following example creates a relation between two appointments:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Add Relation (hmCal;1;89;256;1)
```
