[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_ColorPicker

`hmCal_ColorPicker(headertext;redIn;greenIn;blueIn;redOut;greenOut;blueOut) -> status`

*Notice: This command is obsolete in version 3.0. Please use

4D command **Select RGB Color**!*

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| headertext | String | -> | header text |
| redIn | Longint | -> | default value red |
| greenIn | Longint | -> | default value green |
| blueIn | Longint | -> | default value blue |
| redOut | Longint | <- | selected red |
| greenOut | Longint | <- | selected green |
| blueOut | Longint | <- | selected blue |
| status | Longint | <- | status 0 or 1 |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_ColorPicker*** indicates the system window to the color selection. If the window is confirmed by the user, then the parameter *status* returns *1*. If the window is cancelled by the user, then the parameter *status* returns *0*.

<a id="nummer_00002"></a>

## Example

The following example indicates the color selection window with the default color *red*:

```4d
C_LONGINT($vl_error;$vl_redIn;$vl_greenIn;$vl_blueIn;$vl_redOut;$vl_greenOut;$vl_blueOut)

$vl_redIn:=0xFFFF
$vl_greenIn:=0
$vl_blueIn:=0

$vl_redOut:=0
$vl_greenOut:=0
$vl_blueOut:=0

$vl_error:=hmCal_ColorPicker ("Test";$vl_redIn;$vl_greenIn;$vl_blueIn;$vl_redOut;$vl_greenOut;$vl_blueOut)
```
