
/*1*/
Select cno,COUNT(cphoneno)
from phone
GROUP BY cno;
/*2*/
Select categoryname,Count(categoryname)
from rest_table
GROUP BY categoryname
ORDER BY Count(categoryname) DESC;
/*3*/
Select TFLOOR,Count(categoryname)
from rest_table
GROUP BY TFLOOR
ORDER BY TFLOOR;
/*4*/
Select TNO,COUNT(BNAME)
FROM table_benefits
GROUP BY TNO;
/*5*/
SELECT CATEGORYNAME,SUM(TAREA)
FROM rest_table
GROUP BY categoryname;
/*6*/
Select COUNT(CNO),CREGDATE
FROM clients 
WHERE (cat LIKE 'M%' OR cat LIKE 'N%') 
GROUP BY cregdate
HAVING COUNT(CNO)>=2;
/*7*/
SELECT CNO,COUNT(TNO)
FROM  booking
GROUP BY CNO;
/*8*/
SELECT CNO,COUNT(TNO)
FROM booking
GROUP BY CNO,CINDATE
HAVING (cindate>='01/01/2020') AND (cindate<='31/12/2020');
/*9*/
SELECT SUM(TBOOKTIMES),categoryname,tfloor
FROM rest_table
GROUP BY CATEGORYNAME,TFLOOR,TAREA
HAVING (TAREA>=3) AND (SUM(TBOOKTIMES)<4);
/*10*/
SELECT count(tbooktimes),TNO
FROM rest_table
GROUP BY tno;





