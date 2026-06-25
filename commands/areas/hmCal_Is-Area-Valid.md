[Areas](../../guides/category-pages/areas.md)

# hmCal_Is Area Valid

`hmCal_Is Area Valid(Area) -> Valid`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| Area | Longint | -> | hmCal area |
| Valid | Longint | <- | 1=valid, 0=invalid |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Is Area Valid*** returns if the hmCal area, defined by the parameter *Area* is valid or not. If the area is valid a *1* is returned. If the area is invalid a *0* is returned.

<a id="nummer_00002"></a>

## Example

The following example returns, if the area is valid or not:

```4d
If(hmCal_Is Area Valid(135468941)=1)
 ALERT("Valid!")

 Do something...

Else
 ALERT("Invalid!)
End if
```
