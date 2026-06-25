[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Get Format

`hmCal_Get Format(area;type) -> format`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| type | Longint | -> | Formattype |
| format | Text | <- | Format |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Format*** returns the format for a specific type. Pass a formattype in the parameter *type* and you will get back the format as the result.

For more details about the

Lesen Sie dazu mehr im Kapitel [hmCal_SET FORMAT](hmCal_SET-FORMAT.md)

<a id="nummer_00002"></a>

## Example

The following example returns the date format:

```4d
C_TEXT($vt_format)

$vt_format:=hmCal_Get Format (calArea;1)
```
