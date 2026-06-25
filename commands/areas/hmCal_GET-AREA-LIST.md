[Areas](../../guides/category-pages/areas.md)

# hmCal_GET AREA LIST

`hmCal_GET AREA LIST(areas;thread_IDs)`

```4d
Parameter          Type             Description
areas              ARRAY LONGINT    <- hmCal areas
thread_IDs         ARRAY LONGINT    <- Thread IDs
```

<a id="nummer_00001"></a>

## Description

With the command ***hmCal_GET AREA LIST*** you can get a list of all currently valid hmCal areas of the current 4D application. The command is indepenent of the current process.

<a id="nummer_00002"></a>

## Example

The following example returns all hmCal areas of the current 4D application:

```4d
ARRAY LONGINT($tl_areas;0)
ARRAY LONGINT($tl_threads;0)

hmCal_GET AREA LIST($tl_areas;$tl_threads)
```
