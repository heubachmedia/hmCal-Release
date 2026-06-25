[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_START ON MONDAY

`hmCal_START ON MONDAY(area;startOnMonday)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
startOnMonday      Longint      ->  0=start on sunday
                                    1=start on monday
```

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_START ON MONDAY*** you can set the begin of the weeks in the month view to sunday or monday.

<a id="nummer_00002"></a>

## Example

The following example sets the first days of the weeks in the month view to sunday:

```4d
hmCal_START ON MONDAY(hmCal;0)
```
