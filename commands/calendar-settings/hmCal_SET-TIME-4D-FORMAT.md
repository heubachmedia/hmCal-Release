[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET TIME 4D FORMAT

`hmCal_SET TIME 4D FORMAT(area;format)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| format | Longint | -> | format number |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET TIME 4D FORMAT*** sets the current time format. You can pass a standard 4D time format number in the parameter *format*.

<a id="nummer_00002"></a>

## Example

The following example sets the time format:

```4d
hmCal_SET TIME 4D FORMAT(hmCal;HH MM AM PM)
```
