[Areas](../../guides/category-pages/areas.md)

# hmCal_DRAG AND DROP PROPERTIES

`hmCal_DRAG AND DROP PROPERTIES(area;variable;arrayindex;process)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal Bereich |
| variable | Pointer | <- | Pointer to the source-variable |
| arrayindex | Longint | <- | array position |
| process | Longint | <- | process number |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_DRAG AND DROP PROPERTIES*** returns information about the last drop action within the calendar. Usually the command is called in the callback-method, installed through [hmCal_INSTALL CALLBACK](hmCal_INSTALL-CALLBACK.md), with the event *hmCal_Drop*, in order to receive closer information about the source element of the last drag & drop action.

The parameter *variable* returns a pointer to the source variable. If the source element is an array, then in the parameter *arrayindex* is returned the element number.

In all cases the parameter *process* returns the process number of the source element.

*Important: The parameter*variable*must be a valid pointer and cannot be NULL!*

<a id="nummer_00002"></a>

## Example

The following example provides more information about the source element of the last drag & drop action:

```4d
C_LONGINT($vl_arrayindex;$vl_process)
C_POINTER($vp_variable)

$vl_arrayindex:=0
$vl_process:=0

hmCal_DRAG AND DROP PROPERTIES ($vl_area;$vp_variable;$vl_arrayindex;$vl_process)
```
