/*�*/
SELECT * FROM category WHERE category.tableprice>55;

/*�*/
SELECT * FROM clients WHERE clients.cfirstname='MARIA' AND clients.cno=102;

/*�*/
SELECT * FROM rest_table WHERE rest_table.categoryname='FOURTABLE' OR rest_table.categoryname='SIXTABLE';

/*�*/
SELECT * FROM table_benefits WHERE table_benefits.bname <> 'KIDSEAT';

/*�*/
SELECT * FROM table_benefits WHERE bname IS NULL;

/*��*/
SELECT  * FROM booking WHERE tno BETWEEN 21 AND 23;

/*�*/

SELECT * FROM table_benefits WHERE bname IN('KIDSEAT','MOBILECHARGER');

/*�*/
SELECT * FROM clients WHERE clastname LIKE '%HS';
SELECT * FROM clients WHERE cfirstname LIKE 'G%'

/*�*/
SELECT tNo,tFloor,tArea,tBooktimes,CategoryName FROM rest_table
WHERE tarea>tno

/*�*/
SELECT DISTINCT BNAME FROM TABLE_BENEFITS;
SELECT DISTINCT CATEGORYNAME FROM REST_TABLE;

/*�*/
SELECT * FROM booking WHERE cindate='18/12/2020';

