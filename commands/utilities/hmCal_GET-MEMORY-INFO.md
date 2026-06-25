[Utilities](../../guides/category-pages/utilities.md)

# hmCal_GET MEMORY INFO

`hmCal_GET MEMORY INFO(handles;bytes)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| handles | Longint | <- | number Handles |
| bytes | Longint | <- | number Bytes |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET MEMORY INFO*** returns the current memory allocation. The parameter *handles* returns the number of blocks in the heap. The parameter *bytes* returns the number of all bytes of all blocks.

The command includes the memory of all currently allocated hmCal areas.
