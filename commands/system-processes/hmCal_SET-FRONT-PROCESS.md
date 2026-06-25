[System processes](../../guides/category-pages/system-processes.md)

# hmCal_SET FRONT PROCESS

`hmCal_SET FRONT PROCESS (Processnumber)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| Processnumber | Text | -> | New front process |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET FRONT PROCESS*** sets an application, defined by *Processnumber* as the frontmost application.

<a id="nummer_00002"></a>

## Example

The following code sets the current (4D) application to the foreground:

```4d
C_TEXT ($vt_processno)

$vt_processno:=hmCal_Get Current Process
hmCal_SET FRONT PROCESS($vt_processno)
```
