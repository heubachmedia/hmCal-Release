[System processes](../../guides/category-pages/system-processes.md)

# hmCal_Get Current Process

`hmCal_Get Current Process -> Processnumber`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| Processnumber | Text | <- | Current process |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Current Process*** returns the current process number of the current application.

<a id="nummer_00002"></a>

## Example

The following code returns the current process number of the current application:

```4d
C_TEXT ($vt_processno)

$vt_processno:=hmCal_Get Current Process
```
