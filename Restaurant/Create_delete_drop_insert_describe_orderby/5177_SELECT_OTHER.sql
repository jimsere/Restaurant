/*α*/
SELECT * FROM category WHERE category.tableprice>55;

/*β*/
SELECT * FROM clients WHERE clients.cfirstname='MARIA' AND clients.cno=102;

/*γ*/
SELECT * FROM rest_table WHERE rest_table.categoryname='FOURTABLE' OR rest_table.categoryname='SIXTABLE';

/*δ*/
SELECT * FROM table_benefits WHERE table_benefits.bname <> 'KIDSEAT';

/*ε*/
SELECT * FROM table_benefits WHERE bname IS NULL;

/*στ*/
SELECT  * FROM booking WHERE tno BETWEEN 21 AND 23;

/*ζ*/

SELECT * FROM table_benefits WHERE bname IN('KIDSEAT','MOBILECHARGER');

/*η*/
SELECT * FROM clients WHERE clastname LIKE '%HS';
SELECT * FROM clients WHERE cfirstname LIKE 'G%'

/*θ*/
SELECT tNo,tFloor,tArea,tBooktimes,CategoryName FROM rest_table
WHERE tarea>tno

/*ι*/
SELECT DISTINCT BNAME FROM TABLE_BENEFITS;
SELECT DISTINCT CATEGORYNAME FROM REST_TABLE;

/*κ*/
SELECT * FROM booking WHERE cindate='18/12/2020';

