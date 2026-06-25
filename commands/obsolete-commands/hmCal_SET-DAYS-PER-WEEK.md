[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_SET DAYS PER WEEK

`hmCal_SET DAYS PER WEEK(area;days)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| days | Longint | -> | number of days |

*Notice: This command is obsolete in version 1.6. Please use [hmCal_SET DAY RANGE](../calendar-settings/hmCal_SET-DAY-RANGE.md)!*

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_SET DAYS PER WEEK*** you can define, how many days should be visible in the week view. Only values between two and seven days are valid. All other values are ignored.

<a id="nummer_00002"></a>

## Example

The following example shows five days in the week view:

```4d
hmCal_SET DAYS PER WEEK(hmCal;5)
```
