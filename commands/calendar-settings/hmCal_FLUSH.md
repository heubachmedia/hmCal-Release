[Calendar Settings](../../guides/category-pages/calendar-settings.md)

# hmCal_FLUSH

`hmCal_FLUSH(area)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_FLUSH*** refreshes all depending appointments in the project view. This command is helpful, if you change some properties of an appointment (starttime, endtime or milestone) with programming language.

If depending appointments are shiften, the callback method is calling.
