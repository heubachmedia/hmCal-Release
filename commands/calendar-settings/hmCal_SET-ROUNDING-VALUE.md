[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET ROUNDING VALUE

`hmCal_SET ROUNDING VALUE(area;value)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| value | Longint | -> | values from 1 to 20 |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET ROUNDING VALUE*** defines the size of the rounding of all appointments. You can use values from *1* to *20*. *1* is the smallest rounding and *20* is the strongest rounding value. All others values will be ignored.

You can also deactivate all roundings with the command [hmCal_SET ROUNDING](hmCal_SET-ROUNDING.md).

<a id="nummer_00002"></a>

## Example

The following example rounds all corners with a size of 15:

```4d
hmCal_SET ROUNDING (calarea;1)
hmCal_SET ROUNDING VALUE (calarea;15)
```
