[Calendar](../../guides/category-pages/calendar.md)

# hmCal_GET CALENDAR LIST

`hmCal_GET CALENDAR LIST (area;array)`

```
Parameter          Type             Description
area               Longint       ->  hmCal area
array              Longint-array <-  array with calendar id's
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET CALENDAR LIST*** returns an array with all available calendar ID's.

<a id="nummer_00002"></a>

## Example

The following example returns an array with all calendar id's:

```4d
ARRAY LONGINT ($tl_calIds;0)

hmCal_GET CALENDAR LIST (hmCal;$tl_calIds)
```
