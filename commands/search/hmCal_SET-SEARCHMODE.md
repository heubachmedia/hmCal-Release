[Search](../../guides/category-pages/search.md)

# hmCal_SET SEARCHMODE

`hmCal_SET SEARCHMODE (area;OnOff)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| OnOff | Longint | -> | 1 = On, 0=Off |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET SEARCHMODE*** sets the hmCal area to a visual search mode. The area is shown darken now, except the appointments which where added with the command [hmCal_SET TO SEARCH](hmCal_SET-TO-SEARCH.md).

<a id="nummer_00002"></a>

## Example

The following example sets the hmCal to the search mode and highlights an appointment:

```4d
hmCal_SET SEARCHMODE (calarea;1)
hmCal_SET TO SEARCH (calarea;3)
```

![001209.jpg](../../assets/images/001209.jpg)
