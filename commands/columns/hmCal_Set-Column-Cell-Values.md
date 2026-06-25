[Columns](../../guides/category-pages/columns.md)

# hmCal_Set Column Cell Values

`hmCal_Set Column Cell Values(area;reference;arrayRef;arrayContent) -> error`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
reference          Longint      ->  column reference
arrayRef           Longint-Array->  array with appointment or
                                    user id's
arrayContent       Text-Array   ->  array with cell contents
error              Longint      <-  error code
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Set Column Cell Values*** sets new cell values for a column, defined by the parameter *reference*. The parameter *arrayRef* is depending of the current view. If you execute the command in the user multi day view, the parameter *arrayRef* defines an array with user references. If you execute the command in the project view, the parameter *arrayRef* defines an array with appointment references. The parameter *arrayContent* defines cell contents as a textarray.

<a id="nummer_00002"></a>

## Example

The following examples defines new cell values:

```4d
ARRAY LONGINT($tl_refs;3)
ARRAY TEXT($tt_values;3)
$tl_refs{1}:=5
$tl_refs{2}:=10
$tl_refs{3}:=11

$tt_values{1}:="Cell 1"
$tt_values{2}:="Cell 2"
$tt_values{3}:="Cell 3"

$vl_error:=hmCal_Set Column Cell Values ($vl_area;1;$tl_refs;$tt_values)
```
