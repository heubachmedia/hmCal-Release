[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET ROUNDING

`hmCal_SET ROUNDING(area;status)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
status             Longint      ->  1=round corners
                                    0=no round corners
```

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_SET ROUNDING*** you can define if the corners of all appointments have round corners or not.

How round the corners should be, you can use the command [hmCal_SET ROUNDING VALUE](hmCal_SET-ROUNDING-VALUE.md).

<a id="nummer_00002"></a>

## Example

The following example rounds all corners of all appointments in the calendar:

```4d
hmCal_SET ROUNDING (hmCal;1)
```
