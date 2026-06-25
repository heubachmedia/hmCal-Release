[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_OPTIMIZED FORMATS

`hmCal_OPTIMIZED FORMATS(area;formatarray)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| Bereich | Longint | -> | hmCal Bereich |
| formatarray | Textarray | -> | array of formats |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_OPTIMIZED FORMATS*** defines several formats in hmCal for optimal representation in the columns. The suitable format will be used automatically, in which the column width fits.

If you pass an empty array, all defined formats will be deleted.

Note: If *formatarray* is filled with values, the commands [hmCal_SET DATE FORMAT](../obsolete-commands/hmCal_SET-DATE-FORMAT.md) and [hmCal_SET DATE 4D FORMAT](hmCal_SET-DATE-4D-FORMAT.md) have no effect to the current area.

You can find a table for all placeholder in chapter [hmCal_SET DATE FORMAT](../obsolete-commands/hmCal_SET-DATE-FORMAT.md).

<a id="nummer_00002"></a>

## Example

The following example defines an array of different formats length:

```4d
ARRAY TEXT($tt_formats;4)
$tt_formats{1}:="%n. %N."
$tt_formats{2}:="%n. %N. %y"
$tt_formats{3}:="%n. %N. %Y"
$tt_formats{4}:="%n. %B %Y"
hmCal_OPTIMIZED FORMATS (hmCal;$tt_formats)
```
