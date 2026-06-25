[Utilities](../../guides/category-pages/utilities.md)

# hmCal_Date2Seconds

`hmCal_Date2Seconds(date;seconds) -> unix-time`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| date | Date | -> | date |
| seconds | Longint | -> | seconds |
| unix-time | Longint | <- | unix-time |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Date2Seconds*** returns the unixtime from the parameters *date* and *seconds*. The unix-time is the count of seconds since january 1st, 1970.

<a id="nummer_00002"></a>

## Example

The following example returns the current unix-time:

```4d
C_LONGINT($vl_unixtime)

$vl_unixtime:=hmCal_Date2Seconds(Current Date;Current Time+0)
```
