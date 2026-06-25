[System processes](../../guides/category-pages/system-processes.md)

# hmCal_Get Front Process

`hmCal_Get Front Process -> Processnumber`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| Processnumber | Text | <- | Front process |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Front Process*** returns the frontmost application's processnumber.

<a id="nummer_00002"></a>

## Example

The following example returns the processnumber of the frontmost application:

```4d
C_TEXT ($vt_processno)

$vt_processno:=hmCal_Get Front Process
```
