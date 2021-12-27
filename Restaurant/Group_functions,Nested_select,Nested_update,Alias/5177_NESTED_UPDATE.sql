/*Τροποποιηση της τιμης των τραπεζιων με θεσεις ανω των εξι ατομων την οποια εξισωνω με την τιμη των τραπεζιων με εξι θεσεις ατομων*/ 
UPDATE category
SET tableprice=(SELECT TABLEPRICE FROM category
WHERE name='SIXTABLE')
WHERE name='MORETABLE';
/*Μετακινηση του τραπεζιου με αριθμο 22 στον δευτερο οροφο του μαγαζιου οπου υπαρχει το τραπεζι 23*/
UPDATE rest_table
SET(TFLOOR)=(SELECT TFLOOR FROM rest_table
WHERE TNO=23)
WHERE TNO=22;