[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_SET MONTH NAMES

`hmCal_mini_SET MONTH NAMES(area;monthnames)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal-mini area |
| monthnames | Stringarray | -> | monthnames to set |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_SET MONTH NAMES*** sets all monthnames defined by the array *monthnames*. The array can be a string-array or a text-array.

<a id="nummer_00002"></a>

## Example

The following example sets all monthnames to german:

```4d
ARRAY TEXT($tt_monthnames;12)
$tt_monthnames{1}:="Januar"
$tt_monthnames{2}:="Februar"
$tt_monthnames{3}:="März"
$tt_monthnames{4}:="April"
$tt_monthnames{5}:="Mai"
$tt_monthnames{6}:="Juni"
$tt_monthnames{7}:="Juli"
$tt_monthnames{8}:="August"
$tt_monthnames{9}:="September"
$tt_monthnames{10}:="Oktober"
$tt_monthnames{11}:="November"
$tt_monthnames{12}:="Dezember"

hmCal_mini_SET MONTH NAMES(hmCalmini;$tt_monthnames)
```
