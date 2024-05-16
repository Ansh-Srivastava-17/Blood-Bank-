create database cooperative;
use cooperative;

CREATE TABLE Manager ( M_id int NOT NULL PRIMARY KEY,  mName varchar(100) NOT NULL,  m_phNo int);
INSERT into Manager VALUES(101,'shivank', 96939);
INSERT into Manager VALUES (102,'shwetanshu', 96939);
INSERT into Manager VALUES (103,'singh', 96938);
INSERT into Manager VALUES (104,'yusuf', 96939);
INSERT into Manager VALUES (105,'jackson', 96939);
INSERT into Manager VALUES (106,'akhil', 96939);
INSERT into Manager VALUES (107,'jojo', 96939);
INSERT into Manager VALUES (108,'stella', 96939);
INSERT into Manager VALUES (109,'monika', 96939);
INSERT into Manager VALUES(110,'himanshi', 96939);
CREATE TABLE City ( City_ID int NOT NULL PRIMARY KEY,  City_name varchar(100) NOT NULL );
INSERT into City VALUES(1100,'Dallas');
INSERT into City VALUES(1200,'Austin');
INSERT into City VALUES (1300,'Irving');
INSERT into City VALUES (1400,'Houston');
INSERT into City VALUES (1500,'Richardson');
INSERT into City VALUES (1600,'Plano');
INSERT into City VALUES (1700,'Frisco');
INSERT into City VALUES (1800,'Arlington');
INSERT into City VALUES (1900,'San Antonio');
INSERT into City VALUES (2000,'Tyler');
drop table Recording_Staff; 
CREATE TABLE Recording_Staff ( reco_ID int NOT NULL PRIMARY KEY,  reco_Name varchar(100) NOT NULL,  reco_phNo int );
INSERT into Recording_Staff VALUES(101012,'Lekha',404484);
INSERT into Recording_Staff VALUES (101112,'shivam',404588);
INSERT into Recording_Staff VALUES (101212,'Walcot',40458);
INSERT into Recording_Staff VALUES (101312,'jackson',40458);
INSERT into Recording_Staff VALUES (101412,'Silva',404580);
INSERT into Recording_Staff VALUES (101512,'Adrian',404580);
INSERT into Recording_Staff VALUES (101612,'shivam',404580);
INSERT into Recording_Staff VALUES(101712,'shyam',40458); 
INSERT into Recording_Staff VALUES(101812,'Jerry',40458);
INSERT into Recording_Staff VALUES (101912,'Tim',404583);

CREATE TABLE Donor( bd_ID int ,  bd_name varchar(100) NOT NULL,  bd_age varchar(100), 
    bd_sex varchar(100),  bd_Bgroup varchar(10),  bd_reg_date date,  reco_ID int NOT NULL,  
    City_ID int NOT NULL,booth_no int,booth_location varchar(20),FOREIGN KEY(reco_ID) REFERENCES Recording_Staff(reco_ID), 
    FOREIGN KEY(City_ID) REFERENCES City(City_ID) );

INSERT into Donor VALUES(150011,'Mark',25,'M','O+','2015-02-19',101412,1100,1,'new_york');
INSERT into Donor VALUES(150011,'Mark',25,'M','O+','2015-02-19',101412,1100,2,'sydney');
INSERT into Donor VALUES(150011,'Mark',25,'M','O+','2015-02-19',101412,1100,3,'arab');
INSERT into Donor VALUES (150012,'Abdul',35,'M','A-','2015-02-15',101412,1100,1,'new_york');
INSERT into Donor VALUES (150013,'Shivank',22,'M','AB+','2016-08-9',101212,1200,2,'sydney');
INSERT into Donor VALUES (150013,'Shivank',22,'M','AB+','2016-08-9',101212,1200,3,'arab');
INSERT into Donor VALUES (150014,'shweta',29,'M','B+','2016-08-29',101212,1300,4,'romania');
INSERT into Donor VALUES (150015,'Shyam',42,'M','A+','2017-09-12',101212,1300,1,'new_york');
INSERT into Donor VALUES (150016,'Dan',44,'F','AB-','2017-01-23',101212,1200,2,'sydney');
INSERT into Donor VALUES (150016,'Dan',44,'F','AB-','2017-01-23',101212,1200,3,'arab');
INSERT into Donor VALUES (150017,'Mike',33,'M','B-','2018-05-9',101312,1400,4,'romania');
INSERT into Donor VALUES (150018,'Elisa',31,'F','O+','2018-07-10',101312,1200,1,'new_york');
INSERT into Donor VALUES (150019,'Carrol',24,'F','AB+','2018-03-6',101312,1500,2,'sydney');
INSERT into Donor VALUES (150020,'shivansh',29,'M','O-','2018-02-7',101212,1200,3,'arab'); 

CREATE TABLE Donor_1NF_1( bd_ID int ,  bd_name varchar(100) NOT NULL,  bd_age varchar(100), 
    bd_sex varchar(100),  bd_Bgroup varchar(10),  bd_reg_date date,  reco_ID int NOT NULL,  
    City_ID int NOT NULL,FOREIGN KEY(reco_ID) REFERENCES Recording_Staff(reco_ID), 
    FOREIGN KEY(City_ID) REFERENCES City(City_ID) );

INSERT into Donor_1NF_1 VALUES(150011,'Mark',25,'M','O+','2015-02-19',101412,1100);
INSERT into Donor_1NF_1 VALUES (150012,'Abdul',35,'M','A-','2015-02-15',101412,1100);
INSERT into Donor_1NF_1 VALUES (150013,'Shivank',22,'M','AB+','2016-08-9',101212,1200);
INSERT into Donor_1NF_1 VALUES (150014,'shweta',29,'M','B+','2016-08-29',101212,1300);
INSERT into Donor_1NF_1 VALUES (150015,'Shyam',42,'M','A+','2017-09-12',101212,1300);
INSERT into Donor_1NF_1 VALUES (150016,'Dan',44,'F','AB-','2017-01-23',101212,1200);
INSERT into Donor_1NF_1 VALUES (150017,'Mike',33,'M','B-','2018-05-9',101312,1400);
INSERT into Donor_1NF_1 VALUES (150018,'Elisa',31,'F','O+','2018-07-10',101312,1200);
INSERT into Donor_1NF_1 VALUES (150019,'Carrol',24,'F','AB+','2018-03-6',101312,1500);
INSERT into Donor_1NF_1 VALUES (150020,'shivansh',29,'M','O-','2018-02-7',101212,1200);

CREATE TABLE Donor_1NF_2( bd_ID int,booth_no int,booth_location varchar(20),PRIMARY KEY(bd_ID,booth_no));INSERT into Donor_1NF_2 VALUES(150011,1,'new_york');
INSERT into Donor_1NF_2 VALUES(150011,2,'sydney');
INSERT into Donor_1NF_2 VALUES(150011,3,'arab');
INSERT into Donor_1NF_2 VALUES (150012,1,'new_york');
INSERT into Donor_1NF_2 VALUES (150013,2,'sydney');
INSERT into Donor_1NF_2 VALUES (150013,3,'arab');
INSERT into Donor_1NF_2 VALUES (150014,4,'romania');
INSERT into Donor_1NF_2 VALUES (150015,1,'new_york');
INSERT into Donor_1NF_2 VALUES (150016,2,'sydney');
INSERT into Donor_1NF_2 VALUES (150016,3,'arab');
INSERT into Donor_1NF_2 VALUES (150017,4,'romania');
INSERT into Donor_1NF_2 VALUES (150018,1,'new_york');
INSERT into Donor_1NF_2 VALUES (150019,2,'sydney');
INSERT into Donor_1NF_2 VALUES (150020,3,'arab'); 
create table DONOR_2NF_1( bd_ID int,booth_no int,PRIMARY KEY(bd_ID,booth_no));
INSERT into Donor_2NF_1 VALUES(150011,1);
INSERT into Donor_2NF_1 VALUES(150011,2);
INSERT into Donor_2NF_1 VALUES(150011,3);
INSERT into Donor_2NF_1 VALUES (150012,1);
INSERT into Donor_2NF_1 VALUES (150013,2);
INSERT into Donor_2NF_1 VALUES (150013,3);
INSERT into Donor_2NF_1 VALUES (150014,4);
INSERT into Donor_2NF_1 VALUES (150015,1);
INSERT into Donor_2NF_1 VALUES (150016,2);
INSERT into Donor_2NF_1 VALUES (150016,3);
INSERT into Donor_2NF_1 VALUES (150017,4);
INSERT into Donor_2NF_1 VALUES (150018,1);
INSERT into Donor_2NF_1 VALUES (150019,2);
INSERT into Donor_2NF_1 VALUES (150020,3); 
drop table DONOR_2NF_2;
create table DONOR_2NF_2( booth_no int,booth_location varchar(20));
insert into DONOR_2NF_2 values(1,'new_york');
insert into DONOR_2NF_2 values(2,'sydney');
insert into DONOR_2NF_2 values(3,'arab');
insert into DONOR_2NF_2 values(4,'romania');


CREATE TABLE DiseaseFinder( dfind_ID int NOT NULL PRIMARY KEY,  dfind_name varchar(100) NOT NULL,  dfind_PhNo int,specialization_doctor varchar(20) );
INSERT into DiseaseFinder VALUES(11,'Peter',969395,'cardiologist');
INSERT into DiseaseFinder VALUES(12,'Park',969393,'neurologist'); 
INSERT into DiseaseFinder VALUES(13,'Jerry',966849,'medicene'); 
INSERT into DiseaseFinder VALUES(14,'shivam',969282,'gynecologist'); 
INSERT into DiseaseFinder VALUES(15,'Monika',91234,'gynecologist'); 
INSERT into DiseaseFinder VALUES(16,'Ram',96953,'medicene');
INSERT into DiseaseFinder VALUES(17,'Swathi',96685,'neurologist'); 
INSERT into DiseaseFinder VALUES(18,'Gautham',96686,'medicene'); 
INSERT into DiseaseFinder VALUES(19,'Ashwin',96687,'neurologist'); 
INSERT into DiseaseFinder VALUES(20,'Yash',96938,'medicene'); 




CREATE TABLE BloodSpecimen ( specimen_number int NOT NULL,  
    b_group varchar(10) NOT NULL,  status_available int,  dfind_ID int NOT NULL, 
    M_id int NOT NULL,status_blood varchar(20),primary key (specimen_number,b_group), FOREIGN KEY(M_id) REFERENCES Manager(M_id),
    FOREIGN KEY(dfind_ID) REFERENCES DiseaseFinder(dfind_ID) );

INSERT into BloodSpecimen VALUES(1001, 'B+', 1,11,101,'infected');
INSERT into BloodSpecimen VALUES (1002, 'O+', 1,12,102,'non_infected');
INSERT into BloodSpecimen VALUES (1003, 'AB+', 1,11,102,'infected');
INSERT into BloodSpecimen VALUES (1004, 'O-', 1,13,103,'non_infected');
INSERT into BloodSpecimen VALUES (1005, 'A+', 0,14,101,'infected');
INSERT into BloodSpecimen VALUES (1006, 'A-', 1,13,104,'non_infected');
INSERT into BloodSpecimen VALUES (1007, 'AB-', 1,15,104,'infected');
INSERT into BloodSpecimen VALUES (1008, 'AB-', 0,11,105,'infected');
INSERT into BloodSpecimen VALUES (1009, 'B+', 1,13,105,'infected');
INSERT into BloodSpecimen VALUES (1010, 'O+', 0,12,105,'non_infected');
INSERT into BloodSpecimen VALUES (1011, 'O+', 1,13,103,'infected');
INSERT into BloodSpecimen VALUES (1012, 'O3-', 1,14,102,'infected');
INSERT into BloodSpecimen VALUES (1013, 'B-', 1,14,102,'non_infected');
INSERT into BloodSpecimen VALUES (1014, 'AB+', 0,15,101,'non_infected');






CREATE TABLE Hospital_Info_1 ( hosp_ID int NOT NULL,  hosp_name varchar(100) NOT NULL,  City_ID int NOT NULL,  M_id int NOT NULL,  primary key(hosp_ID),  FOREIGN KEY(M_id) REFERENCES Manager(M_id),  FOREIGN KEY(City_ID) REFERENCES City(City_ID) );
INSERT into Hospital_Info_1 VALUES(1,'MayoClinic',1100,101);
INSERT into Hospital_Info_1 VALUES (2,'CleavelandClinic',1200,103);
INSERT into Hospital_Info_1 VALUES (3,'NYU',1300,103); 
INSERT into Hospital_Info_1 VALUES(4,'Baylor',1400,104);
INSERT into Hospital_Info_1 VALUES (5,'Charlton',1800,103);
INSERT into Hospital_Info_1 VALUES (6,'Greenoaks',1300,106);
INSERT into Hospital_Info_1 VALUES (7,'Forestpark',1300,102);
INSERT into Hospital_Info_1 VALUES (8,'Parkland',1200,106);
INSERT into Hospital_Info_1 VALUES (9,'Pinecreek',1500,109);
INSERT into Hospital_Info_1 VALUES (10,'WalnutHill',1700,105); 

CREATE TABLE Hospital_Info_2 ( hosp_ID int NOT NULL,  hosp_name varchar(100) NOT NULL,  hosp_needed_Bgrp varchar(10),  hosp_needed_qnty int,  primary key(hosp_ID,hosp_needed_Bgrp) ); 
INSERT into Hospital_Info_2 VALUES(1,'MayoClinic','A+',20);
INSERT into Hospital_Info_2 VALUES (1,'MayoClinic','A-',0);
INSERT into Hospital_Info_2 VALUES (1,'MayoClinic','AB+',40);
INSERT into Hospital_Info_2 VALUES (1,'MayoClinic','AB-',10);
INSERT into Hospital_Info_2 VALUES (1,'MayoClinic','B-',20); 
INSERT into Hospital_Info_2 VALUES(2,'CleavelandClinic','A+',40);
INSERT into Hospital_Info_2 VALUES (2,'CleavelandClinic','AB+',20);
INSERT into Hospital_Info_2 VALUES (2,'CleavelandClinic','A-',10);
INSERT into Hospital_Info_2 VALUES (2,'CleavelandClinic','B-',30);
INSERT into Hospital_Info_2 VALUES (2,'CleavelandClinic','B+',0);
INSERT into Hospital_Info_2 VALUES (2,'CleavelandClinic','AB-',10);
 INSERT into Hospital_Info_2 VALUES(3,'NYU','A+',0);
INSERT into Hospital_Info_2 VALUES (3,'NYU','AB+',0);
INSERT into Hospital_Info_2 VALUES(3,'NYU','A-',0);
INSERT into Hospital_Info_2 VALUES (3,'NYU','B-',20);
INSERT into Hospital_Info_2 VALUES(3,'NYU','B+',10);
INSERT into Hospital_Info_2 VALUES (3,'NYU','AB-',0); 
INSERT into Hospital_Info_2 VALUES(4,'Baylor','A+',10);
INSERT into Hospital_Info_2 VALUES (4,'Baylor','A-',40);
INSERT into Hospital_Info_2 VALUES (7,'Forestpark','B-',40);
INSERT into Hospital_Info_2 VALUES (8,'Parkland','B+',10);
INSERT into Hospital_Info_2 VALUES (9,'Pinecreek','AB-',20);

CREATE TABLE Recipient ( reci_ID int NOT NULL PRIMARY kEY,  reci_name varchar(100) NOT NULL,  reci_age varchar(10),  reci_Brgp varchar(100),  reci_Bqnty float,  reco_ID int NOT NULL,  City_ID int NOT NULL,  M_id int NOT NULL,  FOREIGN KEY(M_id) REFERENCES Manager(M_id),  FOREIGN KEY(City_ID) REFERENCES City(City_ID) ); 
Alter table Recipient 
ADD reci_sex varchar(100); 
Alter table Recipient ADD reci_reg_date date; 
INSERT into Recipient VALUES(10001,'Peter',25,'B+',1.5,101212,1100,101,'M','2015-02-17');
INSERT into Recipient VALUES (10002,'shivank',60,'A+',1,101312,1100,102,'M','2015-12-16');
INSERT into Recipient VALUES (10003,'akhil',35,'AB+',0.5,101312,1200,102,'M','2015-10-17');
INSERT into Recipient VALUES (10004,'Parker',66,'B+',1,101212,1300,104,'M','2015-11-17');
INSERT into Recipient VALUES(10005,'jojo',53,'B-',1,101412,1400,105,'M','2015-05-17');
INSERT into Recipient VALUES(10006,'Preetham',45,'O+',1.5,101512,1500,105,'M','2015-12-17');
INSERT into Recipient VALUES(10007,'Swetha',22,'AB-',1,101212,1500,101,'F','2016-01-17');
INSERT into Recipient VALUES(10008,'Swathi',25,'B+',2,101412,1300,103,'F','2015-05-14');
INSERT into Recipient VALUES(10009,'Lance',30,'A+',1.5,101312,1100,104,'M','2015-05-18');
INSERT into Recipient VALUES(10010,'Marsh',25,'AB+',3.5,101212,1200,107,'M','2016-05-3');

create table disease(blood_specimen_no int,bgroup varchar(20),disease_name varchar(20));
INSERT into disease VALUES(1001, 'B+','diabetes');
INSERT into disease VALUES(1001, 'B+','TB' );
INSERT into disease VALUES(1001, 'B+', 'BP');
INSERT into disease VALUES (1002, 'O+', NULL);
INSERT into disease VALUES (1003, 'AB+', 'HEART_DISEASE');
INSERT into disease VALUES (1003, 'AB+','ROSEA');
INSERT into disease VALUES (1004, 'O-',NULL);
INSERT into disease VALUES (1004, 'O-','BP');
INSERT into disease VALUES (1005, 'A+','TB');
INSERT into disease VALUES (1006, 'A-',NULL);
INSERT into disease VALUES (1007, 'AB-','DIABETES');
INSERT into disease VALUES (1007, 'AB-','DIABETES');
INSERT into disease VALUES (1008, 'AB-','TB' );
INSERT into disease VALUES (1009, 'B+','SINUS' );
INSERT into disease VALUES (1009, 'B+','BP' );
INSERT into disease VALUES (1010, 'O+',NULL);
INSERT into disease VALUES (1011, 'O+','TB');
INSERT into disease VALUES (1012, 'O-','BP' );
INSERT into disease VALUES (1013, 'B-',NULL);
INSERT into disease VALUES (1014, 'AB+',NULL);

create table disease_1NF(blood_specimen_no int,disease_name varchar(20));
INSERT into disease_1NF VALUES(1001,'diabetes');
INSERT into disease_1NF VALUES(1001,'TB' );
INSERT into disease_1NF VALUES(1001,'BP');
INSERT into disease_1NF VALUES (1002,NULL);
INSERT into disease_1NF VALUES (1003,'HEART_DISEASE');
INSERT into disease_1NF VALUES (1003,'ROSEA');
INSERT into disease_1NF VALUES (1004,NULL);
INSERT into disease_1NF VALUES (1004,'BP');
INSERT into disease_1NF VALUES (1005,'TB');
INSERT into disease_1NF VALUES (1006,NULL);
INSERT into disease_1NF VALUES (1007,'DIABETES');
INSERT into disease_1NF VALUES (1007,'DIABETES');
INSERT into disease_1NF VALUES (1008,'TB' );
INSERT into disease_1NF VALUES (1009,'SINUS' );
INSERT into disease_1NF VALUES (1009,'BP' );
INSERT into disease_1NF VALUES (1010,NULL);
INSERT into disease_1NF VALUES (1011,'TB');
INSERT into disease_1NF VALUES (1012,'BP' );
INSERT into disease_1NF VALUES (1013,NULL);
INSERT into disease_1NF VALUES (1014,NULL);

create table disease_2NF(blood_specimen_no int,bgroup varchar(20));
INSERT into disease_2NF VALUES(1001,'B+');
INSERT into disease_2NF VALUES (1002,'O+');
INSERT into disease_2NF VALUES (1003,'AB+');
INSERT into disease_2NF VALUES (1004,'O-');
INSERT into disease_2NF VALUES (1005,'A+');
INSERT into disease_2NF VALUES (1006,'A-');
INSERT into disease_2NF VALUES (1007,'AB-');
INSERT into disease_2NF VALUES (1008,'AB-' );
INSERT into disease_2NF VALUES (1009,'B+' );
INSERT into disease_2NF VALUES (1010,'O+');
INSERT into disease_2NF VALUES (1011,'O+');
INSERT into disease_2NF VALUES (1012,'O3-');
INSERT into disease_2NF VALUES (1013,'B-');
INSERT into disease_2NF values(1014,'AB+');


SELECT d.bd_name
FROM Donor d
INNER JOIN City c ON d.City_ID = c.City_ID
WHERE c.City_name = 'Austin' AND d.bd_reg_date >= '2016-08-9';


select Donor.bd_name,Recipient.reci_name,reco_Name from 
Recording_Staff
inner join Donor on Recording_Staff.reco_ID = Donor.reco_ID inner join Recipient
on Recording_Staff.reco_ID = Recipient.reco_ID where Donor.bd_Bgroup =
Recipient.reci_Brgp;

SELECT h1.hosp_ID, h1.hosp_name, h1.City_ID,h1.M_id,
 h2.hosp_needed_Bgrp,h2.hosp_needed_qnty
FROM Hospital_Info_1 h1
INNER JOIN Hospital_Info_2 h2
ON h1.hosp_ID = h2.hosp_ID;

Select b1.specimen_number,b1.b_group,b1.status_available,b1.dfind_ID,b1.M_id,
b1.status_blood,
d1.dfind_name,d1.dfind_PhNo,d1.specialization_doctor 
from BloodSpecimen b1 join DiseaseFinder d1 
on b1.dfind_ID=d1.dfind_ID;

Select b1.specimen_number,b1.b_group,b1.status_available,b1.dfind_ID,b1.M_id,
b1.status_blood,m.mName,m.m_phNo
from BloodSpecimen b1 join Manager m
on b1.M_id=m.M_id;


SELECT bd_name, bd_age, bd_Bgroup, mName, City_name
FROM Donor
JOIN Manager ON Donor.reco_ID = Manager.M_id
JOIN City ON Donor.City_ID = City.City_ID
WHERE City_name = 'Dallas';


SELECT d.bd_name
FROM Donor d
INNER JOIN City c ON d.City_ID = c.City_ID
WHERE c.City_name = 'Plano' AND d.bd_reg_date >= '2016-01-01';


SELECT m.mName
    FROM Manager m
    INNER JOIN Recording_Staff rs ON m.M_id = rs.reco_ID
    WHERE rs.reco_ID = v_reco_id;


SELECT d.bd_name
FROM Donor d
INNER JOIN City c ON d.City_ID = c.City_ID
WHERE c.City_name = 'Austin' AND d.bd_reg_date >= '2016-08-9';


select Donor.bd_name,Recipient.reci_name,reco_Name from 
Recording_Staff
inner join Donor on Recording_Staff.reco_ID = Donor.reco_ID inner join Recipient
on Recording_Staff.reco_ID = Recipient.reco_ID where Donor.bd_Bgroup =
Recipient.reci_Brgp;

SELECT h1.hosp_ID, h1.hosp_name, h1.City_ID,h1.M_id,
 h2.hosp_needed_Bgrp,h2.hosp_needed_qnty
FROM Hospital_Info_1 h1
INNER JOIN Hospital_Info_2 h2
ON h1.hosp_ID = h2.hosp_ID;

Select b1.specimen_number,b1.b_group,b1.status_available,b1.dfind_ID,b1.M_id,
b1.status_blood,
d1.dfind_name,d1.dfind_PhNo,d1.specialization_doctor 
from BloodSpecimen b1 join DiseaseFinder d1 
on b1.dfind_ID=d1.dfind_ID;

Select b1.specimen_number,b1.b_group,b1.status_available,b1.dfind_ID,b1.M_id,
b1.status_blood,m.mName,m.m_phNo
from BloodSpecimen b1 join Manager m
on b1.M_id=m.M_id;




