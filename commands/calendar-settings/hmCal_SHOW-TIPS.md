[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_SHOW TIPS

`hmCal_SHOW TIPS(area;tips)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
tips               Longint      ->  0=don`t show tips
                                    1=show tips
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SHOW TIPS*** defines, if tips are shown in the calendar. You can define tips for each appointment with the command [hmCal_Set Appointment Tip](../obsolete-commands/hmCal_Set-Appointment-Tip.md). Tips are help texts if you move your mouse above an appointment.

<a id="nummer_00002"></a>

## Example

The following example deactivates all tips of the calendar:

```4d
hmCal_SHOW TIPS(hmCal;0)
```
