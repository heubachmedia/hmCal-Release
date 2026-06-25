[Utilities](../../guides/category-pages/utilities.md)

# hmCal_Get Current Thread ID

`hmCal_Get Current Thread ID -> thread ID`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| thread ID | Longint | <- | thread ID |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Current Thread ID*** returns the thread ID of the current thread.

<a id="nummer_00002"></a>

## Example

The following example returns the current thread-ID:

```4d
C_LONGINT($vl_threadID)

$vl_threadID:=hmCal_Get Current Thread ID
```
