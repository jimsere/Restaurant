/*����������� ��� ����� ��� ��������� �� ������ ��� ��� ��� ������ ��� ����� ������� �� ��� ���� ��� ��������� �� ��� ������ ������*/ 
UPDATE category
SET tableprice=(SELECT TABLEPRICE FROM category
WHERE name='SIXTABLE')
WHERE name='MORETABLE';
/*���������� ��� ��������� �� ������ 22 ���� ������� ����� ��� �������� ���� ������� �� ������� 23*/
UPDATE rest_table
SET(TFLOOR)=(SELECT TFLOOR FROM rest_table
WHERE TNO=23)
WHERE TNO=22;