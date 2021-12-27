/*Βρισκω την ελαχιστη τιμη τραπεζιου*/
SELECT MIN(TABLEPRICE) FROM category;
/*Βρισκω την μεγιστη τιμη τραπεζιου*/
SELECT MAX(TABLEPRICE) FROM category;
/*Βρισκω ποσα τραπεζια τεσσαρων θεσεων υπαρχουν*/
SELECT COUNT(*) FROM rest_table WHERE categoryname='FOURTABLE';
/*Βρισκω το αθροισμα του εμβαδου των τραπεζιων που εχουν τεσσερις θεσεις*/
SELECT SUM(TAREA) FROM rest_table WHERE categoryname='FOURTABLE';
/*Βρισκω την μεση τιμη απο ολες τις κατηγοριες των τραπεζιων*/
SELECT AVG(TABLEPRICE) FROM CATEGORY;
