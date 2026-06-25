[Areas](../../guides/category-pages/areas.md)

# hmCal_Get Version

`hmCal_Get Version -> version`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| version | Longint | <- | version number of hmCal |

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Get Version*** returns the version number of hmCal. The version number consists of two bytes with the following structure:

```
0xFF00 - Major version
0x00F0 - Minor version
0x000F - Revision version
```

<a id="nummer_00002"></a>

## Example

The following example shows the version number as a message:

```4d
C_LONGINT($vl_version;$vl_majorversion;$vl_minorversion;$vl_revision)

$vl_version:=hmCal_Get Version 
$vl_majorversion:=($vl_version & 0x0F00) >> 8
$vl_minorversion:=($vl_version & 0x00F0) >> 4
$vl_revision:=$vl_version & 0x000F

ALERT("hmCal Version "+String($vl_majorversion)+"."+String($vl_minorversion)+"."+String($vl_revision)+" is running.")
```
