[Recurrence Appointments](../../guides/category-pages/recurrence-appointments.md)

# hmCal_SET RECURRENCE LIST

`hmCal_SET RECURRENCE LIST (area;reference;list)`

```
Parameter          Type             Description
area               Longint      ->  hmCal area
reference          Longint      ->  appointment reference
list               Longintarray ->  list of
                                    recurrence properties
```

## Contents

- [1 Description](#nummer_00001)
  - [1.1 Properties for weekly appointments](#nummer_00002)
  - [1.2 Properties for montly appointments](#nummer_00003)
  - [1.3 Properties for yearly appointments](#nummer_00004)

<a id="nummer_00001"></a>

## Description

The command ***hmCal_SET RECURRENCE LIST*** defines special recurrence properties for an appointment. Pass a longint array in the parameter *list*. To delete the list, just pass an empty list in the parameter.

If you define a recurrence with this list, all standard recurrence intervals are ignored. That means, that only the list is deciding.

The content of the list is depending from the recurrence type (see below). Each array element consists of a long integer (32 bit) and represents a condition.

hmCal supports several types of special properties for recurrence appointments. For example you can define the day in a weekly recurrence an appointment takes place.

<a id="nummer_00002"></a>

### Properties for weekly appointments

It can be defined, on which weekdays the appointment takes place. Define 1 for monday to 7 for sunday.

**Example:**

The appointment should takes place on tuesday and thursday:

```4d
ARRAY LONGINT($tl_list;2)

$tl_list{1}:=2
$tl_list{2}:=4

hmCal_SET RECURRENCE LIST (hmCal;1;$tl_list)
```

<a id="nummer_00003"></a>

### Properties for montly appointments

It can be defined on which days in a month an appointment takes place. You can set 1 for the first day to 31 for the 31st day in a month. A value from -1 to -31 counts the days in a month back. A value of -1 means the last day of a month.

**Example:**

The appointment should takes place on the first and the last day in a month:

```4d
ARRAY LONGINT($tl_list;2)

$tl_list{1}:=1
$tl_list{2}:=-1

hmCal_SET RECURRENCE LIST (hmCal;1;$tl_list)
```

Also you can define an which weekday in a month an appointment takes place. Here you can use the bits 9-12 and 13-16. The bis 9-12 defines the weekday. It must be defined a value between 1 and 7 (monday to sunday). The bits 13-16 defines the count of the occurrence. It must be defined a value between 1 and 4 (first and fourth weekday) and 0 for all weekdays. The bits 17-32 are unused. If you pass a negative value, the days are count backwards.

**Example:**

An appointment should takes place on the second wednesday and on each last sunday in a month:

```4d
ARRAY LONGINT($tl_list;2)

$tl_list{1}:=(0x1000*2)+(0x0100*3)
$tl_list{2}:=-((0x1000*1)+(0x0100*7))

hmCal_SET RECURRENCE LIST (hmCal;1;$tl_list)
```

<a id="nummer_00004"></a>

### Properties for yearly appointments

It can be defined on which days in a year an appointment takes place. Define a value from 1 to 365/366 for the days in a year. If you pass a value from -366/-365 to -1 the days are count backwards. That means a value of -1 defines the last day in a year.

**Example:**

An appointment should takes place on the first and on the last day in a year:

```4d
ARRAY LONGINT($tl_list;2)

$tl_list{1}:=1
$tl_list{2}:=-1

hmCal_SET RECURRENCE LIST (hmCal;1;$tl_list)
```

Also you can define in which month an appointment takes place. You can define the month in the bits 21-24. All values between 1 (january) and 12 (december) are valid.

**Example:**

The appointment should takes place in march and august:

```4d
ARRAY LONGINT($tl_list;2)

$tl_list{1}:=0x100000*3
$tl_list{2}:=0x100000*8

hmCal_SET RECURRENCE LIST (hmCal;1;$tl_list)
```

The bits 25-32 defines the week number on which the appointment takes place.

**Example:**

The appointment should takes place in the 3rd and 20th week:

```4d
ARRAY LONGINT($tl_list;2)

$tl_list{1}:=0x1000000*3
$tl_list{2}:=0x1000000*20

hmCal_SET RECURRENCE LIST (hmCal;1;$tl_list)
```

Also you can define on which weekday in a month (bits 21-24) the appointment takes place. Here you can use the bits 13-16 and 17-20. The bits 13-16 defines the weekday. Here all values between 1 and 7 (monday and sunday) are valid. The bits 17-20 defines the count of the occurrence. Here all values between 1 and 4 are valid. If you pass a negative value, all properties are count backwards.

**Example:**

An appointment should takes place on each second wednesday and on each last sunday in october of each year:

```4d
ARRAY LONGINT($tl_list;2)

$tl_list{1}:=(0x10000*2)+(0x1000*3)+(0x100000*10)
$tl_list{2}:=-((0x10000*1)+(0x1000*7)+(0x100000*10))
```
