[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_SET VISIBLE HOURS

`hmCal_SET VISIBLE HOURS(area;hours)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| hours | Longint | -> | number of hours |

*Notice: This command is obsolete in version 2.3. Please use

[hmCal_SET VISIBLE SECONDS](../calendar-settings/hmCal_SET-VISIBLE-SECONDS.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET VISIBLE HOURS*** sets the number of visible hours of the calendar. Only values between 1 and 24 hours are valid. All other values are ignored.

<a id="nummer_00002"></a>

## Example

The following example shows all 24 hours of a day, so that scrolling is not necessary:

```4d
hmCal_SET VISIBLE HOURS(hmCal;24)
```
