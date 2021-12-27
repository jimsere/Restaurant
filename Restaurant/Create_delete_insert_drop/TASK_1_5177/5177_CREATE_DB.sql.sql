create table DEPARTMENT(deptno NUMBER,name VARCHAR2(14),PRIMARY KEY (deptno));
 create table DLOCATION(deptno NUMBER,location VARCHAR(15));
 create table EMPLOYEE(idnum NUMBER,firstname VARCHAR(15),lastname VARCHAR(20),sex VARCHAR(1),address VARCHAR(20),salary NUMBER(7,2),bonus NUMBER(6,2),job VARCHAR(20),deptno NUMBER,PRIMARY KEY(idnum));
 create table DEPENDENT(name VARCHAR(15),sex VARCHAR(1),birthdate DATE,relationship NUMBER(1));
 create table PROJECT(projno NUMBER,name VARCHAR(20),location VARCHAR(15),deptno NUMBER,PRIMARY KEY (projno));
 create table workson(idnum NUMBER,projno NUMBER,hours NUMBER(4));
 