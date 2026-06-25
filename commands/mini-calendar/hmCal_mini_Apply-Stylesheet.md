[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_Apply Stylesheet

`hmCal_mini_Apply Stylesheet(area;reference;type;date) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | stylesheet-id |
| type | Longint | -> | type |
| date | Date | -> | date |
| error | Longint | <- | error-code |

## Contents

- [1 Description](#nummer_00001)  [2 Example](#nummer_00003)
  - [1.1 hmCal_mini_stylesheet_day (1)](#nummer_00002)

<a id="nummer_00001"></a>

## Description

The command ***hmCal_mini_Apply Stylesheet*** sets an existing stylesheet for several objects. If you pass a *0* as the parameter *reference*, all objects are set to the standard font. There are the following objects, which can be set by a stylesheet:

<a id="nummer_00002"></a>

### hmCal_mini_stylesheet_day (1)

Pass the date in the parameter *date* to set a special stylesheet for that day. Pass an empty date for all days.

<a id="nummer_00003"></a>

## Example

The following example creates a new stylesheet and sets the month header in the month view:

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_mini_Add Stylesheet (hmCal;1;"Arial";20;Bold)
$vl_error:=hmCal_mini_Apply Stylesheet (hmCal;1;4;0)
```
