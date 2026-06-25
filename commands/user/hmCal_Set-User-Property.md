[User](../../guides/category-pages/user.md)

# hmCal_Set User Property

`hmCal_Set User Property(area;userID;property;valueReal;valueText) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| userID | Longint | -> | user reference |
| property | Longint | -> | user property |
| valueReal | Real | -> | real value to set |
| valueText | Text | -> | text value to set |
| error | Longint | <- | error code |

## Contents

- [1 Description](#nummer_00001)
  - [1.1 hmCal_uprop_Name (1)](#nummer_00002)
  - [1.2 hmCal_uprop_Icon (2)](#nummer_00003)
  - [1.3 hmCal_uprop_Timezone (3)](#nummer_00004)
  - [1.4 hmCal_uprop_TimezoneOffset (4)](#nummer_00005)
  - [1.5 hmCal_uprop_Lineheight (5)](#nummer_00006)
  - [1.6 hmCal_uprop_SupUser (6)](#nummer_00007)
  - [1.7 hmCal_uprop_Expand (7)](#nummer_00008)

<a id="nummer_00001"></a>

## Description

The command***hmCal_Set User Property*** sets a property for an existing user. Just pass the user reference in the parameter *userID*. You can use one of the following options:

<a id="nummer_00002"></a>

### hmCal_uprop_Name (1)

In parameter *valueText* you can get/set the user's name.

<a id="nummer_00003"></a>

### hmCal_uprop_Icon (2)

In the parameter *valueReal* you can pass a custom icon reference. The user icon is displayed in the project view. The icon have to exists or you have to add this icon previously with the command [hmCal_Add Icon](../icons/hmCal_Add-Icon.md). Pass the icon reference into the parameter *valueReal*.

<a id="nummer_00004"></a>

### hmCal_uprop_Timezone (3)

This property sets the time zone of a user in the user day area. Pass the time zone text in the parameter *valueText*. If you pass an empty string, the user has no specific time zone. In this case, the user has the standard time zone (defined by [hmCal_Set Timezone](../areas/hmCal_Set-Timezone.md)). Before you call this command, you have to set the standard time zone with the command [hmCal_Set Timezone](../areas/hmCal_Set-Timezone.md). Only in this case, hmCal can calculate an offset for the user time zone. The offset you can get with the command [hmCal_Get User Property](hmCal_Get-User-Property.md) and the selector *hmCal_uprop_TimezoneOffset*.

<a id="nummer_00005"></a>

### hmCal_uprop_TimezoneOffset (4)

This property returns the time zone offset in seconds of a user where the time zone was defined previously with the selector *hmCal_uprop_Timezone*. This property can be read only.

<a id="nummer_00006"></a>

### hmCal_uprop_Lineheight (5)

This property defines a custom height of a user in the user multi day view. If you pass a height of *0*, a variable height is used (standard). If you pass a value greater than 0, this height is used for the line height of the user. In this case, the height is not variable.

<a id="nummer_00007"></a>

### hmCal_uprop_SupUser (6)

This property sets the superior user reference. It has only effect in the user multi day view and if the view is set hierarchically.

You can activate a hierarchically user multi day view with [hmCal_SET AREA PROPERTY](../areas/hmCal_SET-AREA-PROPERTY.md) and selector *hmCal_prop_HierarchicalView5*.

<a id="nummer_00008"></a>

### hmCal_uprop_Expand (7)

This property defines, if a user is displayed expanded in the hierarchically multi day view. See selector *hmCal_uprop_SupUser*.

You can read an write the value. If the user is expanded, all sub-users are displayed.
