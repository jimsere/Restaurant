insert into DEPARTMENT VALUES(10,'PWLHSEIS');
insert into DEPARTMENT VALUES(20,'MHX/SH');
insert into DEPARTMENT VALUES(30,'LOGISTHRIO');
insert into DEPARTMENT VALUES(40,'DIOIKHTHRIO');


insert into DLOCATION VALUES(10,'ATHINA');
insert into DLOCATION VALUES(20,'ATHINA');
insert into DLOCATION VALUES(20,'KAVALA');
insert into DLOCATION VALUES(30,'ATHINA');
insert into DLOCATION VALUES(40,'ATHINA');

insert into EMPLOYEE(idnum,firstname,lastname,sex,address,salary,bonus,job,deptno)
VALUES(100,'NIKOS','NIKOY','M','YAKINTHOU 2',800,100,'PROGRAMMER',10);
insert into EMPLOYEE(idnum,firstname,lastname,sex,address,salary,bonus,job,deptno)
VALUES(101,'ANDREAS','ANDREOY','M','KOLOKOTRWNH 12',800,NULL,'PROGRAMMER',10);
insert into EMPLOYEE(idnum,firstname,lastname,sex,address,salary,bonus,job,deptno)
VALUES(102,'IWANNHS','IWANNOY','M','NABARINOY 23',800,1200,'PROGRAMMER',10);
insert into EMPLOYEE(idnum,firstname,lastname,sex,address,salary,bonus,job,deptno)
VALUES(201,'GEWRGIA','GEWRGIOY','F','ANAKSAGORA 40',800,1200,'PROGRAMMER',10);
insert into EMPLOYEE(idnum,firstname,lastname,sex,address,salary,bonus,job,deptno)
VALUES(202,'ANTWNIA','ANTWNIOY','F','ANAKSAGORA 40',800,1200,'PROGRAMMER0',10);



insert into DERENDENT(idnum,name,sex,birthdate,relationship)
VALUES(101,'dimitris','M',TO_DATE('01/03/1996','DD/MM/YYYY'),1);
insert into DERENDENT(idnum,name,sex,birthdate,relationship)
VALUES(101,'dimitra','F',TO_DATE('01/03/1996','DD/MM/YYYY'),1);
insert into DERENDENT(idnum,name,sex,birthdate,relationship)
VALUES(101,'antrianna','F',TO_DATE('13/05/1980','DD/MM/YYYY'),2);
insert into DERENDENT(idnum,name,sex,birthdate,relationship)
VALUES(100,'nikh','F',TO_DATE('13/07,1981','DD/MM/YYYY'),2);


insert into PROJECT VALUES(10001,'MHX/SH NOSOKOMEIWN','MAROUSI',20);
insert into PROJECT VALUES(10002,'MHX/SH DHM. SXOLEIWN','KABALA',20);
insert into PROJECT VALUES(10003,'MHX/SH TEE','KABALA',20);

insert into WORKSON(idnum,projno,hours) VALUES(101,10002,200);
insert into WORKSON(idnum,projno,hours) VALUES(101,10003,200);
insert into WORKSON(idnum,projno,hours) VALUES(100,10001,200);


insert into DLOCATION VALUES(50,'LARISA');

insert into EMPLOYEE(idnum,firstname,lastname,sex,address,salary,job,bonus,deptno)
VALUES(5177,'DIMITRIS','SEREFIAS','M','Kavalas 5',800,'Software Engineer',NULL,50);

insert into DEPENDENT(idnum,name,sex,birthdate,relationship)
VALUES(5177,'Giorgos','M',TO_DATE('01/06/2009','DD/MM/YYYY'),1);
insert into DEPENDENT(idnum,firstname,lastname,sex,address,salary,job,bonus,deptno)
VALUES(5177,'GEORGIA','F',TO_DATE('01/06/2009','DD/MM/YYYY'),1);


















