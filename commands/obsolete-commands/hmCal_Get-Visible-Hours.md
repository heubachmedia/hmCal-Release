[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_Get Visible Hours

`hmCal_Get Visible Hours(area) -> hours`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| hours | Longint | <- | number hours |

*Notice: This command is obsolete in version 2.3. Please use

[hmCal_Get Visible Seconds](../calendar-settings/hmCal_Get-Visible-Seconds.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Visible Hours*** returns the number of visible hours of the calendar.

<a id="nummer_00002"></a>

## Example

The following example returns the number of visible hours:

```4d
C_LONGINT($vl_hours)

$vl_hours:=hmCal_Get Visible Hours(hmCal)
```
