[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_Get Last Event

`hmCal_Get Last Event(area) -> event`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| event | Longint | <- | last event |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Last Event*** returns the last event of the calendar. hmCal supports two events: *On Clicked* and *On Double Clicked*. You can use this command in the object method of the calendar area (see example).

If you want more information about the click or doubleclick, you can use the command [hmCal_GET LAST DESTINATION](hmCal_GET-LAST-DESTINATION.md).

<a id="nummer_00002"></a>

## Example

The following example catch the events *On Clicked* and *On Double Clicked*:

```4d
C_LONGINT($vl_event)

If (Form event=On Plug in Area )

 $vl_event:=hmCal_Get Last Event (calarea)

 Case of 
  :($vl_event=On Clicked )

  :($vl_event=On Double Clicked )
	
 End case 

End if 
```
