[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_SET USER BACKCOLOR

`hmCal_SET USER BACKCOLOR(area;reference;red;green;blue)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | user-id |
| red | Longint | -> | red color |
| green | Longint | -> | green color |
| blue | Longint | -> | blue color |

*Notice: This command is obsolete in version 2.0. Please use

[hmCal_SET COLOR](../calendar-settings/hmCal_SET-COLOR.md)!*

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET USER BACKCOLOR*** sets the background color of an user defined by the parameter *reference* to the color definied by three color components *red*, *green* and *blue*.

<a id="nummer_00002"></a>

## Example

The following example sets the background color of the user with the id 12 to *red*:

```4d
hmCal_SET USER BACKCOLOR(hmCal;12;0xFFFF;0;0)
```
