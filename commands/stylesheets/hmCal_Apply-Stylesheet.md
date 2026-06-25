[Stylesheets](../../guides/category-pages/stylesheets.md)

# hmCal_Apply Stylesheet

`hmCal_Apply Stylesheet(area;reference;type1;type2) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | stylesheet-id |
| type1 | Longint | -> | type 1 |
| type2 | Longint | -> | type 2 |
| error | Longint | <- | error-code |

## Contents

- [1 Description](#nummer_00001)  [2 Example](#nummer_00016)
  - [1.1 Appointment header (1)](#nummer_00002)
  - [1.2 Appointment description (2)](#nummer_00003)
  - [1.3 Calendar descriptions (3)](#nummer_00004)
  - [1.4 Header of the month view (4)](#nummer_00005)
  - [1.5 User descriptions (5)](#nummer_00006)
  - [1.6 Column header (6)](#nummer_00007)
  - [1.7 Column text (7)](#nummer_00008)
  - [1.8 Time line hours (8)](#nummer_00009)
  - [1.9 Cell (9)](#nummer_00010)
  - [1.10 User header (10)](#nummer_00011)
  - [1.11 Date header (11)](#nummer_00012)
  - [1.12 Working hours text (12)](#nummer_00013)
  - [1.13 Time indicator label text (13)](#nummer_00014)
  - [1.14 Time line text (14)](#nummer_00015)

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Apply Stylesheet*** sets an existing stylesheet for several objects. If you pass a *0* as the parameter *reference*, all objects are set to the standard font. There are the following objects, which can be set by a stylesheet:

<a id="nummer_00002"></a>

### Appointment header (1)

If you pass a *1* as the parameter *type1* the stylesheet is applied to the appointment header. In parameter *type2* you can pass the appointment-id, or a *0* for all appointments.

<a id="nummer_00003"></a>

### Appointment description (2)

If you pass a *2* as the parameter *type1* the stylesheet is applied to the appointment description. In parameter *type2* you can pass the appointment-id, or a *0* for all appointments.

<a id="nummer_00004"></a>

### Calendar descriptions (3)

If you pass a *3* as the parameter *type1* the stylesheet is applied to all descriptions of the calendar (time/column descriptions). The parameter *type2* is always *0*.

<a id="nummer_00005"></a>

### Header of the month view (4)

If you pass a *4* as the parameter *type1* the stylesheet is applied to the header of the month view. The parameter *type2* is always *0*.

<a id="nummer_00006"></a>

### User descriptions (5)

*This type is unused. If you want to change user descriptions, you can use type 7 with the column reference -1.*

<a id="nummer_00007"></a>

### Column header (6)

If you pass a *6* as the parameter *type1* the stylesheet is applied to the header of the column. *Type2* defines the column reference or *0* for all columns.

<a id="nummer_00008"></a>

### Column text (7)

If you pass a *7* as the parameter *type1* the stylesheet is applied to the columntext. *Type2* defines the column reference or *0* for all columns.

<a id="nummer_00009"></a>

### Time line hours (8)

If you pass a *8* as the parameter *type1* the stylesheet is applied to the hours of the time line. The parameter *type2* is always *0*.

<a id="nummer_00010"></a>

### Cell (9)

If you pass a *9* as the parameter *type1* the stylesheet is applied to a cell. It only work for views with columns. The parameter *type2* is the column ID. *type3* is the cell id: appointment or user id; depending of the view. For this selector you have to use [hmCal_Apply Stylesheet Ex](hmCal_Apply-Stylesheet-Ex.md)!

<a id="nummer_00011"></a>

### User header (10)

If you pass a *10* as the parameter *type1* the stylesheet is applied to the user header. It works in the user-day-view and the day-user view.

<a id="nummer_00012"></a>

### Date header (11)

If you pass a *11* as the parameter *type1* the stylesheet is applied to the date header.

<a id="nummer_00013"></a>

### Working hours text (12)

If you pass a *12* as the parameter *type1* the stylesheet is applied to the working hours record. You have to pass the working hours record reference in the parameter *type2* or *0* to apply to all working hours.

<a id="nummer_00014"></a>

### Time indicator label text (13)

If you pass a *13* as the parameter *type1* the stylesheet is applied to label text of the current time indicator.

<a id="nummer_00015"></a>

### Time line text (14)

If you pass a *14* as the parameter *type1* the stylesheet is applied to the time line.

<a id="nummer_00016"></a>

## Example

The following example creates a new stylesheet and sets the month header in the month view:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Add Stylesheet (hmCal;1;"Arial";20;Bold)
$vl_error:=hmCal_Apply Stylesheet (hmCal;1;4;0)
```
