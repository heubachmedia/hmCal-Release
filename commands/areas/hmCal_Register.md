[Areas](../../guides/category-pages/areas.md)

# hmCal_Register

`hmCal_Register(Serialnumber) -> Errorcode`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| Serialnumber | String | -> | Serialnumber for hmCal |
| Errorcode | Longint | <- | Errorcode |

## Contents

- [1 Description](#nummer_00001)
- [2 Possible results](#nummer_00002)
- [3 Example](#nummer_00003)

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Register*** registers the plugin. The *Serialnumber* parameter is the appropriate serial number from heubach media.

You must call the command to have access to hmCal functionality. If you put an empty string in the parameter *Serialnumber*, the Plugin will run for 60 minutes in demo mode. If you do not call the hmCal_Register command, all other hmCal commands will be ignored.

You have to call this command once. The seconds call is ignored and returns an error. You must call this command depending on the current application type. For example, you cannot pass a development license to the command if you run a runtime application.

<a id="nummer_00002"></a>

## Possible results

```
 0 = no error
-1 = wrong license
-2 = not yet registered (internally)
-3 = internal error
-4 = demo license
-5 = wrong product version
-6 = wrong 4D version
-7 = reached max clients
-8 = expired
-9 = Wrong 4D product
-10 = Wrong 4D server number
-11 = in demo mode not allowed
```

<a id="nummer_00003"></a>

## Example

```4d
C_LONGINT($vl_error)

$vl_error:=hmCal_Register ("78HMmg1UkopPjifgJKm")
```
