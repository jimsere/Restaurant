/*������ ��� �������� ���� ���������*/
SELECT MIN(TABLEPRICE) FROM category;
/*������ ��� ������� ���� ���������*/
SELECT MAX(TABLEPRICE) FROM category;
/*������ ���� �������� �������� ������ ��������*/
SELECT COUNT(*) FROM rest_table WHERE categoryname='FOURTABLE';
/*������ �� �������� ��� ������� ��� ��������� ��� ����� �������� ������*/
SELECT SUM(TAREA) FROM rest_table WHERE categoryname='FOURTABLE';
/*������ ��� ���� ���� ��� ���� ��� ���������� ��� ���������*/
SELECT AVG(TABLEPRICE) FROM CATEGORY;
