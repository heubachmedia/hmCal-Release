[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET DATE 4D FORMAT

`hmCal_SET DATE 4D FORMAT(area;format)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| format | Longint | -> | format number |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET DATE 4D FORMAT*** sets the current date format. You can pass a standard 4D date format number in the parameter *format*.

If you want to define your own date formats, you can use the command [hmCal_SET DATE FORMAT](../obsolete-commands/hmCal_SET-DATE-FORMAT.md).

<a id="nummer_00002"></a>

## Example

The following example sets the date format to *Abbreviated*:

```4d
hmCal_SET DATE 4D FORMAT(hmCal;2)
```
