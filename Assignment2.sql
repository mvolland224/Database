/*
Morgan Volland
CSC 355 Section 511
Assignment 2
Jan 20, 2021
*/


--Always drop first

drop table ADMISSION;
drop table PATIENT;
drop table UNIT;

--create patient and unit before admission
--The patient IDs should be exactly four characters long, and the phone numbers should be exactly seven
--characters long; you may choose an appropriate maximum length for the patient names. 

create table PATIENT
(
  paitentid	CHAR(4),
  phonenumber  CHAR(7),
  paitentname  VarChar(30),
  primary key (paitentid)
);

--The unit IDs
--should be exactly three characters long, and you may choose appropriate maximum lengths for the unit
--names and hospital names. Each unitÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢s floor should be a positive integer (i.e., zero is not allowed) with
--at most two digits

create table UNIT
(
  unitid	 CHAR(3),
  unitname      VarChar(90),
  hospitalname  VarChar(90),
  unitfloor     Number(4,0), 
  primary key (unitid)
);

--The admission and discharge dates should be stored as date objects (using the DATE
--keyword or the to_date function), not just as character strings.

create table ADMISSION
(
  PAID             CHAR(4),
  UnID             CHAR(3),
  AdmissionDate    DATE,
  DischargeDate    DATE,
  foreign key (PAID) references PATIENT(paitentid),
  foreign key (UnID) references Unit(unitid)
);

--This is where I add stuff

insert into UNIT values (123, 'Emergency', 'Sunny', 1);
insert into UNIT values (133, 'Delivery', 'Childerns', 3);
insert into UNIT values (433, 'Casualty', 'MoonBay', 4);

--patient info
insert into PATIENT values (2222, '7745565', 'Morgan Volland');
insert into PATIENT values (1111, '7725565', 'John Adams');
insert into PATIENT values (2323, '7745765', 'Megan Fox');

--admission info
insert into ADMISSION values (2222, 133, date '2021-01-12', date '2021-01-13');
insert into ADMISSION values (2222, 123, date '2020-01-12', date '2020-07-24');
insert into ADMISSION values (1111, 433, date '2020-12-12', date '2021-01-12');
insert into ADMISSION values (2323, 123, date '2020-06-12', date '2021-01-02');


Select * From UNIT;
Select * From PATIENT;
Select * From ADMISSION;