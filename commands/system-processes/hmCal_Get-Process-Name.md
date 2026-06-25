[System processes](../../guides/category-pages/system-processes.md)

# hmCal_Get Process Name

`hmCal_Get Process Name (Processnumber) -> Processname`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| Processnumber | Text | -> | Processnumber |
| Processname | Text | <- | Processname |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Process Name*** returns the processname of a give processnumber, defined by the parameter *Processnumber*.

<a id="nummer_00002"></a>

## Example

The following example returns the processname of a processnumber:

```4d
C_TEXT ($vt_processno;$vt_processname)

$vt_processname:=hmCal_Get Process Name ($vt_processno)
```
