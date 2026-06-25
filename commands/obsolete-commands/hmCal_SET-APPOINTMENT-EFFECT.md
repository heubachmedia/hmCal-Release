[Obsolete commands](../../guides/category-pages/obsolete-commands.md)

# hmCal_SET APPOINTMENT EFFECT

`hmCal_SET APPOINTMENT EFFECT(area;reference;effect)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
reference          Longint      ->  appointment-id
effect             Longint      ->  0 = no effect
                                    1 = transparent-effect
                                    2 = fading-effect
                                    3 = left bar effect
```

*Notice: This command is obsolete in version 2.0. Please use

[hmCal_Set App Property](../appointments/hmCal_Set-App-Property.md)!*

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_SET APPOINTMENT EFFECT*** you can apply an effect to an appointment or all appointments. If you pass a *1* in the parameter *effect*, the appointment will be drawn half transparency on the background. If you pass a *0* in the parameter *reference*, the command will be applied to all appointments.

You can use predefined [Constants](../../guides/appendix/Constants.md).

![001126.jpg](../../assets/images/001126.jpg)

![001127.jpg](../../assets/images/001127.jpg)

![001128.jpg](../../assets/images/001128.jpg)

![001129.jpg](../../assets/images/001129.jpg)

hmCal_Effect_Normal (0), hmCal_Effect_Dim (1), hmCal_Effect_Fading (2), hmCal_Effect_LeftBar (3)

If you use the effect *hmCal_Effect_LeftBar*, you can also define the width of the bar. You can define the width by calling the command [hmCal_SET AREA PROPERTY](../areas/hmCal_SET-AREA-PROPERTY.md) with the selector *hmCal_prop_LeftBarWidth* and the width as value.

<a id="nummer_00002"></a>

## Example

The following example applies the effect to an appointment:

```4d
hmCal_SET APPOINTMENT EFFECT(hmCal;89;1)
```
