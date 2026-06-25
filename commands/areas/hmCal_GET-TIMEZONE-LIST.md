[Areas](../../guides/category-pages/areas.md)

# hmCal_GET TIMEZONE LIST

`hmCal_GET TIMEZONE LIST(timezonelist)`

```
Parameter          Type             Description
timezonelist       Textarray    ->  List with all available
                                    timezones
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET TIMEZONE LIST*** returns all available timezones.

<a id="nummer_00002"></a>

## Example

The following example returns an array with all available timezones.

```4d
ARRAY TEXT($tt_timezones;0)
hmCal_GET TIMEZONE LIST ($tt_timezones)
```
