[Areas](../../guides/category-pages/areas.md)

# hmCal_Get Callback

`hmCal_Get Callback(area) -> method`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| method | String | <- | callback-method |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Callback*** returns the callback-method, which was set with the command [hmCal_INSTALL CALLBACK](hmCal_INSTALL-CALLBACK.md). If no callback-method was set, an empty string is returned.

<a id="nummer_00002"></a>

## Example

```4d
C_TEXT($vt_Callback)

hmCal_INSTALL CALLBACK (hmCal;"CallBack")
$vt_Callback:=hmCal_Get Callback (hmCal)
```
