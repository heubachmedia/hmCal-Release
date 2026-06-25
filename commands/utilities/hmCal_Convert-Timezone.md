[Utilities](../../guides/category-pages/utilities.md)

# hmCal_Convert Timezone

`hmCal_Convert Timezone(TimezoneFrom;TimezoneTo;Date;Time) -> Error`

```
Parameter          Type             Description
TimezoneFrom       Text        ->   Source timezone
TimezoneTo         Text        ->   Target timezone
Date               Date       <->   Date to convert
Time               Longint    <->   Time to convert
Error              Longint     <-   Errorcode
```

<a id="nummer_00001"></a>

## Description

The command ***hmCal_Convert Timezone*** converts a date and time from one source timezone, the parameter *TimezoneFrom*, to an target timezone, the parameter *TimezoneTo*. The result is set in the parameters *Date* and *Time*. If you pass an empty string in the timezone parameters, the GMT/Greenwich-time is used.

<a id="nummer_00002"></a>

## Examples

1. The following example converts the current time from Berlin to New York:

```4d
C_TIME($vu_time)
C_DATE($vd_date)
C_LONGINT($vl_error)

$vd_date:=Current date
$vu_time:=Current time
$vl_time:=$vu_time+0
$vl_error:=hmCal_Convert Timezone ("Europe/Berlin";"America/New_York";$vd_date;$vl_time)
```

2. The following example converts the current time to GMT/Greenwich time:

```4d
$vl_error:=hmCal_Convert Timezone ("Europe/Berlin";"";$vd_date;$vl_time)
```

3. The following example converts the GMT time to New York time:

```4d
$vl_error:=hmCal_Convert Timezone ("";"America/New_York";$vd_date;$vl_time)
```
