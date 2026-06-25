[Columns](../../guides/category-pages/columns.md)

# hmCal_Set Column Property

`hmCal_Set Column Property(area;reference;property;num;text) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | appointment reference |
| property | Longint | -> | property to set |
| num | Longint | -> | numeric value to set |
| text | Text | -> | text value to set |
| error | Longint | <- | errorcode |

## Contents

- [1 Description](#nummer_00001)
- [2 Properties](#nummer_00002)  [3 Example](#nummer_00013)
  - [2.1 hmCal_cprop_width (1)](#nummer_00003)
  - [2.2 hmCal_cprop_visible (2)](#nummer_00004)
  - [2.3 hmCal_cprop_headertext1 (3)](#nummer_00005)
  - [2.4 hmCal_cprop_headertext2 (4)](#nummer_00006)
  - [2.5 hmCal_cprop_alignment (5)](#nummer_00007)
  - [2.6 hmCal_cprop_resizeable (6)](#nummer_00008)
  - [2.7 hmCal_cprop_minwidth (7)](#nummer_00009)
  - [2.8 hmCal_cprop_headeralignment (8)](#nummer_00010)
  - [2.9 hmCal_cprop_wordwrap (9)](#nummer_00011)
  - [2.10 hmCal_cprop_use_standardtext (10)](#nummer_00012)

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_Set Column Property*** you can set several properties of a column. In the parameter *reference* you must pass a valid column reference. You can use one of the following properties.

> Notice: You can use predefined [Constants](../../guides/appendix/Constants.md).

To get all properties you can use the command [hmCal_Get Column Property](hmCal_Get-Column-Property.md).

**Important: You must always set all parameters of the command. If you use not all parameters (num,text) you must pass an empty value.**

<a id="nummer_00002"></a>

## Properties

<a id="nummer_00003"></a>

### hmCal_cprop_width (1)

The property sets the width of the column in pixels.

<a id="nummer_00004"></a>

### hmCal_cprop_visible (2)

The property sets the visibility of the column. Set *1* for visible and *0* for invisible.

<a id="nummer_00005"></a>

### hmCal_cprop_headertext1 (3)

The property sets the first header text line of the column.

<a id="nummer_00006"></a>

### hmCal_cprop_headertext2 (4)

The property sets the second header text line of the column. The second line is only visible in the project view.

<a id="nummer_00007"></a>

### hmCal_cprop_alignment (5)

The property sets the alignment of the column text.

The property can have four possible values:

- 1 = standard
- 2 = left
- 3 = center
- 4 = right

<a id="nummer_00008"></a>

### hmCal_cprop_resizeable (6)

With the property you can set, if the column should be resizeable or not. Pass *1* for resizeable or *0* for not resizeable.

<a id="nummer_00009"></a>

### hmCal_cprop_minwidth (7)

The property defines the minimum width of the column.

<a id="nummer_00010"></a>

### hmCal_cprop_headeralignment (8)

With this property, you can set the alignment of the column header.

The property can have four possible values:

- 1 = standard
- 2 = left
- 3 = center
- 4 = right

<a id="nummer_00011"></a>

### hmCal_cprop_wordwrap (9)

This property defines, if a column has a word wrap or not. Pass *1* for word wrap (Default) or *0* for deactivating word wrap.

<a id="nummer_00012"></a>

### hmCal_cprop_use_standardtext (10)

This property defines, if the standard-column (id=-1) shows the standard-text or a custom text defined by [hmCal_Set Column Cell Value](hmCal_Set-Column-Cell-Value.md). Default is *1*.

<a id="nummer_00013"></a>

## Example

The following example hides a column with the ID *2*:

```4d
$vl_error:=hmCal_Set Column Property (calArea;2;hmCal_cprop_visible ;0;"")
```
