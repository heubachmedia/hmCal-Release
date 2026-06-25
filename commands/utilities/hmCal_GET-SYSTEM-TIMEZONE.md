[Utilities](../../guides/category-pages/utilities.md)

# hmCal_GET SYSTEM TIMEZONE

`hmCal_GET SYSTEM TIMEZONE(timezone)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| timezone | Text | <- | System timezone |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET SYSTEM TIMEZONE*** returns the current timezone of the operating system.

<a id="nummer_00002"></a>

## Example

The following example returns the system timezone:

```4d
C_TEXT($vt_systemtimezone)

$vt_systemtimezone:=""
hmCal_GET SYSTEM TIMEZONE ($vt_systemtimezone)
```
