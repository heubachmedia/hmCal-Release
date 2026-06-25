[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_ONE LINE CAPTION

`hmCal_ONE LINE CAPTION(area;mode)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
mode               Longint      ->  1=header text
                                    2=description text
```

*Notice: This command is obsolete in version 1.9. Please use

[hmCal_SET AREA PROPERTY](../areas/hmCal_SET-AREA-PROPERTY.md)!*

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_ONE LINE CAPTION***, you can define which text of an appointment is shown if the appointment is displayed as a single line. Mode *1* shows the header text and mode *2* shows the description text of the appointment.

<a id="nummer_00002"></a>

## Example

The following example define, that the header text is shown, if the appointment is displayed as a single line:

```4d
hmCal_ONE LINE CAPTION (calarea;1)
```
