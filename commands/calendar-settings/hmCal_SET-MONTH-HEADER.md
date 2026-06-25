[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SET MONTH HEADER

`hmCal_SET MONTH HEADER(area;monthheader)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| Bereich | Longint | -> | hmCal Bereich |
| monthheader | Text | -> | header in the month view |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET MONTH HEADER*** defines the header text in the month view. If you pass an empty string in the parameter *monthheader*, the standardtext will be shown.

<a id="nummer_00002"></a>

## Example

The following example sets an own month header:

```4d
hmCal_SET MONTH HEADER(hmCal;"January 2008 - March 2008")
```
