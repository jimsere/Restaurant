insert into EMPLOYEE(idnum,firstname,lastname,sex,address,salary,bonus,job,deptno)




 
insert into WORKSON(idnum,projno,hours) values(103,10003,135);




update WORKSON set hours=hours+35
where idnum=101 and projno=10003;




update EMPLOYEE
set salary=salary+400.20
where JOB='PROGRAMMER';



delete from EMPLOYEE where idnum=5177;
delete from WORKSON where idnum=5177;


 
 
 SQL> create user diseref identified by code;
 
 User created.
 
 SQL> grant connect,resource,create view to diseref;
 
 Grant succeeded.