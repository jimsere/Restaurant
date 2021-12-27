/*1á*/
SELECT * FROM CLIENTS,PHONE;
/*1â*/

SELECT * FROM clients,phone,booking;

/*2*/

SELECT clients.cno,CLIENTS.CAT,clients.clastname,clients.cfirstname,PHONE.cphoneno
FROM clients,phone;

/*3*/

SELECT rest_table.tno,REST_TABLE.tfloor,rest_table.tarea,rest_table.categoryname,CATEGORY.tableprice
FROM rest_table,category;

/*4*/

SELECT clients.cno,clients.clastname,clients.cfirstname,clients.cregdate,rest_table.tno,rest_table.tfloor,rest_table.categoryname,booking.cindate,booking.coutdate
FROM clients,rest_table,booking
WHERE rest_table.tfloor=2 AND clients.cno=booking.cno AND (clients.cregdate='09/01/2020' OR clients.cregdate='09/02/2020' OR clients.cregdate='09/03/2020' OR clients.cregdate='09/04/2020' OR clients.cregdate='09/05/2020' OR clients.cregdate='09/06/2020' OR clients.cregdate='09/07/2020' OR clients.cregdate='09/08/2020' OR clients.cregdate='09/09/2020' OR clients.cregdate='09/10/2020' OR clients.cregdate='09/11/2020' OR clients.cregdate='09/12/2020');
 
/*5*/

SELECT *
FROM benefits,booking,category,clients,phone,rest_table,table_benefits
WHERE clients.cno=phone.cno
AND clients.cno=booking.cno
AND rest_table.tno=table_benefits.tno
AND rest_table.tno=booking.tno
AND category.name=rest_table.categoryname
AND benefits.bname=table_benefits.bname;

/*6*/

SELECT CLIENTS.CNO,CLIENTS.clastname,clients.cfirstname
FROM CLIENTS,phone
WHERE clients.cno=phone.cno(+)
AND phone.cphoneno IS NULL;

/*7*/

SELECT REST_TABLE.tno,rest_table.tfloor,rest_table.categoryname,benefits.bname,benefits.bprice
FROM rest_table,table_benefits,benefits
WHERE benefits.bname=table_benefits.bname and rest_table.tno=table_benefits.tno and benefits.bprice=0;

/*8*/

SELECT benefits.bname,benefits.bprice,table_benefits.tno
FROM benefits,table_benefits 
WHERE table_benefits.bname(+) = benefits.bname;

/*9*/
SELECT clients.cno,clients.cfirstname,clients.clastname,COUNT(clients.cno),TO_CHAR(booking.cindate,'YYYY')
FROM clients,booking
WHERE clients.cno=booking.cno AND cindate between '01/01/2020' and '31/12/2020'
GROUP BY clients.cfirstname,clients.clastname,clients.cno,TO_CHAR(booking.cindate,'YYYY');

/*10*/
SELECT clients.cno,clients.cfirstname,clients.clastname,sum(category.tableprice)
from clients,category,rest_table,booking
where category.name=rest_table.categoryname and rest_table.tno=booking.tno and booking.cno=clients.cno
GROUP BY clients.cno,clients.cfirstname,clients.clastname;








