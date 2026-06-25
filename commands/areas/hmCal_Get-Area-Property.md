[Areas](../../guides/category-pages/areas.md)

# hmCal_Get Area Property

`hmCal_Get Area Property(area;property) -> value`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| property | Longint | -> | area property |
| value | Longint | <- | return value |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Area Property*** returns information about the area. With the parameter *property*, you can decide, which information is to be returned. You can also constants for the property-value. See also chapter [Constants](../../guides/appendix/Constants.md).

For decriptions about all properties see chapter [hmCal_SET AREA PROPERTY](hmCal_SET-AREA-PROPERTY.md).

<a id="nummer_00002"></a>

## Example

The following example returns the width of the user-list in the user multi day view:

```4d
C_LONGINT($vl_width)

$vl_width=hmCal_Get Area Property(hmCal;hmCal_prop_UserListWidth)
```
