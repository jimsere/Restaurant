Create table Clients(cNo NUMBER not null,cAT VARCHAR2(15) not null,cLastName VARCHAR(20) not null,
cFirstName VARCHAR(15) not null,cRegDate DATE not null,PRIMARY KEY (cNo),UNIQUE (cAT));

Create table Category(Name VARCHAR(15) not null,TablePrice NUMBER not null,TableCount NUMBER not null,PRIMARY KEY(Name));


Create table Benefits(bName VARCHAR(15) not null,bPrice NUMBER not null,PRIMARY KEY(bName)); 

Create table Phone(cNo NUMBER not null,cPhoneNo NUMBER not null,PRIMARY KEY(cNo,cPhoneNo),
FOREIGN KEY(cNo) REFERENCES Clients(cNo));


Create table Rest_Table(tNo NUMBER not null,tFloor NUMBER not null,tArea NUMBER not null,
tBookTimes NUMBER not null,CategoryName VARCHAR2(15) not null,PRIMARY KEY(tNo));


Create table Table_Benefits(tNo NUMBER not null,bName VARCHAR(20) not null,PRIMARY KEY(tNo,bName),
FOREIGN KEY(tNo) REFERENCES REST_TABLE(tNo),
FOREIGN KEY(bName) REFERENCES Benefits(bName));


Create table Booking(cNo NUMBER not null,tNo NUMBER not null,cInDate DATE not null,
cOutDate DATE not null,PRIMARY KEY (cNo,tNo,cInDate),
FOREIGN KEY(cNo) REFERENCES Clients(cNo),FOREIGN KEY(tNo)REFERENCES Rest_Table(tNo));

insert into Clients(cNo,cAT,cLastName,cFirstName,cRegDate)
VALUES(100,'M969696','GIORGIOY','GIORGOS',TO_DATE('03/12/2020','DD/MM/YYYY'));
insert into Clients(cNo,cAT,cLastName,cFirstName,cRegDate)
VALUES(101,'K959595','DHMHTRIOY','DHMHTRHS',TO_DATE('06/03/2020','DD/MM/YYYY'));
insert into Clients(cNo,cAT,cLastName,cFirstName,cRegDate)
VALUES(102,'L989898','PAPADOPOYLOY','MARIA',TO_DATE('22/01/2020','DD/MM/YYYY'));
insert into Clients(cNo,cAT,cLastName,cFirstName,cRegDate)
VALUES(103,'K919191','IWANNIDHS','GIANNHS',TO_DATE('28/08/2020','DD/MM/YYYY'));
insert into Clients(cNo,cAT,cLastName,cFirstName,cRegDate)
VALUES(104,'L939393','IWANNIDOY','GEORGIA',TO_DATE('28/08/2020','DD/MM/YYYY'));



insert into Rest_Table(tNo,tFloor,tArea,tBookTimes,CategoryName)
VALUES(20,0,20,1,'DOUBLETABLE');
insert into Rest_Table(tNo,tFloor,tArea,tBookTimes,CategoryName)
VALUES(21,3,35,2,'FOURTABLE');
insert into Rest_Table(tNo,tFloor,tArea,tBookTimes,CategoryName)
VALUES(22,1,38,2,'FOURTABLE');
insert into Rest_Table(tNo,tFloor,tArea,tBookTimes,CategoryName)
VALUES(23,2,40,1,'FOURTABLE');
insert into Rest_Table(tNo,tFloor,tArea,tBookTimes,CategoryName)
VALUES(24,3,50,2,'SIXTABLE');



insert into CATEGORY(Name,TablePrice,TableCount)
VALUES('DOUBLETABLE',30,1);
insert into CATEGORY(Name,TablePrice,TableCount)
VALUES('FOURTABLE',50,3);
insert into CATEGORY(Name,TablePrice,TableCount)
VALUES('SIXTABLE',60,1);
insert into CATEGORY(Name,TablePrice,TableCount)
VALUES('MORETABLE',100,0);


insert into Benefits(bName,bPrice)
VALUES('KIDSEAT',2);
insert into Benefits(bName,bPrice)
VALUES('HOOKAH',2);
insert into Benefits(bName,bPrice)
VALUES('TABLET',1);
insert into Benefits(bName,bPrice)
VALUES('MOBILECHARGER',0);


insert into phone(cNo,cPhoneNo)
VALUES(100,6983454567);
insert into phone(cNo,cPhoneNo)
VALUES(101,6974345121);
insert into phone(cNo,cPhoneNo)
VALUES(102,6983842130);
insert into phone(cNo,cPhoneNo)
VALUES(103,6906905755);
insert into phone(cNo,cPhoneNo)
VALUES(104,6987834222);

insert into Booking(cNo,tNo,cInDate,cOutDate)
VALUES(100,20,TO_DATE('18/12/2020 09:30','DD/MM/YYYY HH:MI'),TO_DATE('18/12/2020 11:53','DD/MM/YYYY HH:MI'));
insert into Booking(cNo,tNo,cInDate,cOutDate)
VALUES(101,21,TO_DATE('19/06/2020 08:00','DD/MM/YYYY HH:MI'),TO_DATE('19/06/2020 11:00','DD/MM/YYYY HH:MI'));
insert into Booking(cNo,tNo,cInDate,cOutDate)
VALUES(102,22,TO_DATE('19/06/2020 08:00','DD/MM/YYYY HH:MI'),TO_DATE('20/06/2020 02:00','DD/MM/YYYY HH:MI'));
insert into Booking(cNo,tNo,cInDate,cOutDate)
VALUES(103,23,TO_DATE('24/09/2020 10:00','DD/MM/YYYY HH:MI'),TO_DATE('25/09/2020 12:30','DD/MM/YYYY HH:MI'));
insert into Booking(cNo,tNo,cInDate,cOutDate)
VALUES(104,24,TO_DATE('24/09/2020 09:45','DD/MM/YYYY HH:MI'),TO_DATE('25/09/2020 12:45','DD/MM/YYYY HH:MI'));


insert into Table_Benefits(tNo,bName)
VALUES(20,'KIDSEAT');
insert into Table_Benefits(tNo,bName)
VALUES(20,'TABLET');
insert into Table_Benefits(tNo,bName)
VALUES(21,'HOOKAH');
insert into Table_Benefits(tNo,bName)
VALUES(22,'TABLET');
insert into Table_Benefits(tNo,bName)
VALUES(23,'MOBILECHARGER');
insert into Table_Benefits(tNo,bName)
VALUES(23,'TABLET');
insert into Table_Benefits(tNo,bName)
VALUES(24,'TABLET');
insert into Table_Benefits(tNo,bName)
VALUES(24,'KIDSEAT');
insert into Table_Benefits(tNo,bName)
VALUES(24,'HOOKAH');
insert into Table_Benefits(tNo,bName)
VALUES(24,'MOBILECHARGER');

drop table Booking;

drop table Category;

drop table Phone;

drop table Table_Benefits;

drop table Rest_Table;

drop table Benefits;

drop table Clients;





