/*A*/

SELECT R.*FROM rest_table R
WHERE r.tbooktimes=(SELECT rest_table.tbooktimes FROM rest_table 
WHERE rest_table.tno=r.tno);

/*B*/

SELECT C.*FROM category C
WHERE c.tablecount<>(SELECT COUNT(c.tablecount) from category
WHERE category.name=c.name);

/*Ã*/

SELECT R.*FROM REST_TABLE R
WHERE r.categoryname=SELECT (r.categoryname from rest_table 
WHERE rest_table.tfloor=r.tfloor) AND SELECT C.*FROM category C
WHERE c.tablecount=SELECT COUNT(c.tablecount) from category
WHERE category.name=c.name;


