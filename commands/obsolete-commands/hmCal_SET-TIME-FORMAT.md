[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_SET TIME FORMAT

`hmCal_SET TIME FORMAT(area;format)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| format | Text | -> | Time format |

*Notice: This command is obsolete in version 2.2. Please use

[hmCal_SET FORMAT](../calendar-settings/hmCal_SET-FORMAT.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET TIME FORMAT*** sets the current time format.

Contrary to the command [hmCal_SET TIME 4D FORMAT](../calendar-settings/hmCal_SET-TIME-4D-FORMAT.md) you can define your own time formats define.

Is the parameter *format* an empty string, the standard time format is used or the time format defined by the command [hmCal_SET TIME 4D FORMAT](../calendar-settings/hmCal_SET-TIME-4D-FORMAT.md).

You can find a table for all placeholder in chapter [hmCal_SET DATE FORMAT](hmCal_SET-DATE-FORMAT.md).

<a id="nummer_00002"></a>

## Example

The following example sets the time format to *1:00 AM*:

```4d
hmCal_SET TIME FORMAT(hmCal;"%I:%M %p")
```
