[Stylesheets](../../guides/category-pages/stylesheets.md)

# hmCal_DELETE ALL STYLESHEETS

`hmCal_DELETE ALL STYLESHEETS(area)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_DELETE ALL STYLESHEETS*** deletes all stylesheets. You can delete stylesheets, even if these are still used. These objects are then drawn in the standard font.

<a id="nummer_00002"></a>

## Example

The following example deletes all stylesheets:

```4d
hmCal_DELETE ALL STYLESHEETS(hmCal)
```
