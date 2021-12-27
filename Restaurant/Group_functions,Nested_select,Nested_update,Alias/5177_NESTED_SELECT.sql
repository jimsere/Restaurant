/*A

/*Βρισκω τα τραπεζια που ειναι στον ιδιο οροφο με το τραπεζι 24*/
SELECT TNO,TFLOOR,CATEGORYNAME
FROM rest_table
WHERE TFLOOR IN(SELECT TFLOOR FROM rest_table WHERE TNO=24);
/*Βρισκω τους πελατες που γραφτηκαν στο μαγαζι την ιδια μερα με τον πελατη ιωαννιδου*/
SELECT CAT,CLASTNAME,CFIRSTNAME,CREGDATE
FROM clients
WHERE CREGDATE IN(SELECT CREGDATE FROM CLIENTS WHERE CAT='L939393');
/*Βρισκω ποιες παροχες εχουν την ιδια τιμη με την παροχη kidseat*/
SELECT BNAME,BPRICE
FROM benefits
WHERE bprice IN(SELECT BPRICE FROM benefits
WHERE bname='KIDSEAT');

/*Β

/*Βρισκω τα τραπεζια που ειναι στον ιδιο οροφο και που εχουν ιδιο αριθμο κρατησεων με το τραπεζι 24*/
SELECT TNO,TFLOOR,TBOOKTIMES,CATEGORYNAME
FROM rest_table
WHERE (tfloor,tbooktimes) IN (SELECT tfloor,tbooktimes FROM rest_table
WHERE TNO=24);
/*Γ

/*Βρισκω το τραπεζι με το μεγαλυτερο εμβαδο*/
SELECT*FROM rest_table
WHERE TAREA=(SELECT MAX(TAREA) FROM REST_TABLE);
/*Βρισκω την παροχη με την χαμηλοτερη τιμη*/
SELECT*FROM benefits
WHERE bprice=(SELECT MIN(BPRICE) FROM benefits);
/*Δ

/*Βρισκω τα τραπεζια του δευτερου οροφου που εχουν μεγαλυτερο εμβαδο απο οποιοδηποτε (εστω και απο ενα) τραπεζι του οροφου 3*/
SELECT TNO,TFLOOR,TBOOKTIMES,CATEGORYNAME
FROM rest_table
WHERE (TFLOOR=2) AND
(TAREA>ANY (SELECT TAREA FROM REST_TABLE WHERE TFLOOR=3))
ORDER BY TAREA;
/*Βρισκω τα τραπεζια του δευτερου οροφου που εχουν μεγαλυτερο ή ισο αριθμο κρατησεων απο ολα τα τραπεζια του οροφου 3*/ 
SELECT TNO,TFLOOR,TBOOKTIMES,CATEGORYNAME
FROM rest_table
WHERE (TFLOOR=2) AND
(TBOOKTIMES>=ALL (SELECT TBOOKTIMES FROM rest_table WHERE TFLOOR=3))
ORDER BY tbooktimes;
