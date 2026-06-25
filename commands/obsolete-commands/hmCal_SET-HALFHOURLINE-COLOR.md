[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_SET HALFHOURLINE COLOR

`hmCal_SET HALFHOURLINE COLOR(area;red;green;blue)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| red | Longint | -> | red color |
| green | Longint | -> | green color |
| blue | Longint | -> | blue color |

*Notice: This command is obsolete in version 2.0. Please use

[hmCal_SET COLOR](../calendar-settings/hmCal_SET-COLOR.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET HALFHOURLINE COLOR*** sets the halfhourline color of the calendar to the RGB color defined by the color components *red*, *green* and *blue*.

<a id="nummer_00002"></a>

## Example

The following example sets the halfhourline color of the calendar to red:

```4d
hmCal_SET HALFHOURLINE COLOR(hmCal;0xFFFF;0;0)
```
