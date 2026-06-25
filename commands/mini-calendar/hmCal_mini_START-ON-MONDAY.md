[Mini-Calendar](../../guides/category-pages/mini-calendar.md)

# hmCal_mini_START ON MONDAY

`hmCal_mini_START ON MONDAY(area;startOnMonday)`

```
Parameter          Type             Description
area               Longint      ->  hmCal-mini area
startOnMonday      Longint      ->  0=start on sunday
                                    1=start on monday
```

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_mini_START ON MONDAY*** you can set the begin of the hmCal-mini-calendar to sunday or monday.

<a id="nummer_00002"></a>

## Example

The following example set the first day of the week to sunday:

```4d
hmCal_mini_START ON MONDAY(hmCalmini;0)
```
