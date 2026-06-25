[Appointments](../../guides/category-pages/appointments.md)

# hmCal_Get App Property

`hmCal_Get App Property(area;reference;property;num;text;date) -> error`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | appointment reference |
| property | Longint | -> | property to get |
| num | Real | <- | numeric value to get |
| text | Text | <- | text value to get |
| date | Datum | <- | date value to get |
| error | Longint | <- | errorcode |

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_Get App Property*** you can get all properties of an appointment. In the parameter *reference* you must pass an appointment id. All properties you may use are described in chapter [hmCal_Set App Property](hmCal_Set-App-Property.md).

> Notice: You can use predefined [Constants](../../guides/appendix/Constants.md).

To set all properties you can use the command [hmCal_Set App Property](hmCal_Set-App-Property.md).

<a id="nummer_00002"></a>

## Example

The following example detect the end date of an appointment (id 26) and extend the end date for two days:

```4d
C_REAL($vz_prop_real)
C_TEXT($vt_prop_text)
C_DATE($vd_prop_date)

$vz_prop_real:=0
$vt_prop_text:=""
$vd_prop_date:=!00.00.00!
$vl_error:=hmCal_Get App Property (calArea;26;hmCal_aprop_DateTo;$vz_prop_real;$vt_prop_text;$vd_prop_date)

$vd_prop_date:=$vd_prop_date+2

$vl_error:=hmCal_Set App Property (calArea;26;hmCal_aprop_DateTo;$vz_prop_real;$vt_prop_text;$vd_prop_date)
```
