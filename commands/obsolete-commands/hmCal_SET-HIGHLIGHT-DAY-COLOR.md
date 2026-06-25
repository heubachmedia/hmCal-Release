[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_SET HIGHLIGHT DAY COLOR

`hmCal_SET HIGHLIGHT DAY COLOR(area;red;green;blue)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| red | Longint | -> | red color |
| green | Longint | -> | green color |
| blue | Longint | -> | blue color |

*Notice: This command is obsolete in version 2.0. Please use

[hmCal_Add Special Day](../special-days/hmCal_Add-Special-Day.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET HIGHLIGHT DAY COLOR*** sets the color of the highlighted day defined by the color components *red*, *green* and *blue*.

<a id="nummer_00002"></a>

## Example

The following example sets the color of the highlighted day to red:

```4d
hmCal_SET HIGHLIGHT DAY COLOR(hmCal;0xFFFF;0;0)
```
