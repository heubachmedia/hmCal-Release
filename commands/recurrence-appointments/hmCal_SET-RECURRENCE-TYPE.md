[Recurrence Appointments](../../guides/category-pages/recurrence-appointments.md)

# hmCal_SET RECURRENCE TYPE

`hmCal_SET RECURRENCE TYPE (area;reference;type)`

| Parameter | Type | Direction | Description |
| --- | --- | --- | --- |
| area | Longint | -> | hmCal area |
| reference | Longint | -> | appointment reference |
| type | Longint | -> | recurrence type |

## Contents

- [1 Description](#nummer_00001)
  - [1.1 hmCal_rrule_none (0)](#nummer_00002)
  - [1.2 hmCal_rrule_secondly (1)](#nummer_00003)
  - [1.3 hmCal_rrule_minutely (2)](#nummer_00004)
  - [1.4 hmCal_rrule_hourly (3)](#nummer_00005)
  - [1.5 hmCal_rrule_daily (4)](#nummer_00006)
  - [1.6 hmCal_rrule_weekly (5)](#nummer_00007)
  - [1.7 hmCal_rrule_monthly (6)](#nummer_00008)
  - [1.8 hmCal_rrule_yearly (7)](#nummer_00009)

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET RECURRENCE TYPE*** repeat an appointment in different intervals, defined by the parameter *type*.

Also see: [hmCal_Get Recurrence Type](hmCal_Get-Recurrence-Type.md).

hmCal supports the following types:

<a id="nummer_00002"></a>

### hmCal_rrule_none (0)

Appointment does not repeat.

<a id="nummer_00003"></a>

### hmCal_rrule_secondly (1)

Appointment repeats every second.

<a id="nummer_00004"></a>

### hmCal_rrule_minutely (2)

Appointment repeats every minute.

<a id="nummer_00005"></a>

### hmCal_rrule_hourly (3)

Appointment repeats every hour.

<a id="nummer_00006"></a>

### hmCal_rrule_daily (4)

Appointment repeats every day.

<a id="nummer_00007"></a>

### hmCal_rrule_weekly (5)

Appointment repeats every week.

<a id="nummer_00008"></a>

### hmCal_rrule_monthly (6)

Appointment repeats every month.

<a id="nummer_00009"></a>

### hmCal_rrule_yearly (7)

Appointment repeats every year.
