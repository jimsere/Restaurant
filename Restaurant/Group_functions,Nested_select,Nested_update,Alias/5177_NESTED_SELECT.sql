/*A

/*������ �� �������� ��� ����� ���� ���� ����� �� �� ������� 24*/
SELECT TNO,TFLOOR,CATEGORYNAME
FROM rest_table
WHERE TFLOOR IN(SELECT TFLOOR FROM rest_table WHERE TNO=24);
/*������ ���� ������� ��� ��������� ��� ������ ��� ���� ���� �� ��� ������ ���������*/
SELECT CAT,CLASTNAME,CFIRSTNAME,CREGDATE
FROM clients
WHERE CREGDATE IN(SELECT CREGDATE FROM CLIENTS WHERE CAT='L939393');
/*������ ����� ������� ����� ��� ���� ���� �� ��� ������ kidseat*/
SELECT BNAME,BPRICE
FROM benefits
WHERE bprice IN(SELECT BPRICE FROM benefits
WHERE bname='KIDSEAT');

/*�

/*������ �� �������� ��� ����� ���� ���� ����� ��� ��� ����� ���� ������ ��������� �� �� ������� 24*/
SELECT TNO,TFLOOR,TBOOKTIMES,CATEGORYNAME
FROM rest_table
WHERE (tfloor,tbooktimes) IN (SELECT tfloor,tbooktimes FROM rest_table
WHERE TNO=24);
/*�

/*������ �� ������� �� �� ���������� ������*/
SELECT*FROM rest_table
WHERE TAREA=(SELECT MAX(TAREA) FROM REST_TABLE);
/*������ ��� ������ �� ��� ���������� ����*/
SELECT*FROM benefits
WHERE bprice=(SELECT MIN(BPRICE) FROM benefits);
/*�

/*������ �� �������� ��� �������� ������ ��� ����� ���������� ������ ��� ����������� (���� ��� ��� ���) ������� ��� ������ 3*/
SELECT TNO,TFLOOR,TBOOKTIMES,CATEGORYNAME
FROM rest_table
WHERE (TFLOOR=2) AND
(TAREA>ANY (SELECT TAREA FROM REST_TABLE WHERE TFLOOR=3))
ORDER BY TAREA;
/*������ �� �������� ��� �������� ������ ��� ����� ���������� � ��� ������ ��������� ��� ��� �� �������� ��� ������ 3*/ 
SELECT TNO,TFLOOR,TBOOKTIMES,CATEGORYNAME
FROM rest_table
WHERE (TFLOOR=2) AND
(TBOOKTIMES>=ALL (SELECT TBOOKTIMES FROM rest_table WHERE TFLOOR=3))
ORDER BY tbooktimes;
