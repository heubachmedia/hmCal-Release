[System processes](../../guides/category-pages/system-processes.md)

# hmCal_GET PROCESS LIST

`hmCal_GET PROCESS LIST (AllProcesses)`

```
Parameter          Type             Description
AllProcesses       Text-Array   <-  All processnumbers of
                                    the current system
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_GET PROCESS LIST*** returns a textarray with all processes of the OS. You can get the names for the processnumbers with the command [hmCal_Get Process Name](hmCal_Get-Process-Name.md).

<a id="nummer_00002"></a>

## Example

The following code returns an array with all processnumbers:

```4d
ARRAY TEXT($tt_processnumbers)

hmCal_GET PROCESS LIST ($tt_processnumbers)
```
