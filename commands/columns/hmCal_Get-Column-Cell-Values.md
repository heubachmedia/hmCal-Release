[Columns](../../guides/category-pages/columns.md)

# hmCal_Get Column Cell Values

`hmCal_Get Column Cell Values(area;reference;arrayRef;arrayContent) -> error`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
reference          Longint      ->  column reference
arrayRef           Longint-Array<-  array with appointment or
                                    user id's
arrayContent       Text-Array   <-  array with cell contents
error              Longint      <-  error code
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Column Cell Values*** returns all cell values for a column, defined by the parameter *reference*. The parameter *arrayRef* returns all references. The parameter *arrayContent* returns all cell contents as a textarray.

<a id="nummer_00002"></a>

## Example

The following examples returns all cell values of a column:

```4d
ARRAY LONGINT($tl_refs;0)
ARRAY TEXT($tt_values;0)

$vl_error:=hmCal_Get Column Cell Values ($vl_area;1;$tl_refs;$tt_values)
```
