/*1*/
CREATE VIEW
benefit(benefit_name)
AS
SELECT bname
FROM benefits
WHERE bprice IS NULL
WITH CHECK OPTION;
/*2*/
CREATE VIEW
PHONES(cno,pnumber,cat,clastname,cfirstname)
AS
SELECT phone.cno,phone.cphoneno,clients.cat,clients.clastname,clients.cfirstname
FROM phone,clients
WHERE phone.cno=clients.cno
WITH CHECK OPTION;
/*3*/
CREATE VIEW
nophone(cno)
AS
SELECT cno 
FROM Clients
WHERE cno not in(select cno from phone )
WITH CHECK OPTION;

/*4*/
CREATE VIEW 
LAST_10_DAYS_REGISTERS(cno,lastn,firstn,registerdate)
AS
SELECT cno,clastname,cfirstname,cregdate
FROM clients
WHERE SYSDATE-10<=cregdate;

/*5*/
CREATE VIEW 
bookings_now(lastname,firstname,tableno,indate,outdate)
AS
SELECT clients.clastname,clients.cfirstname,booking.tno,booking.cindate,booking.coutdate
FROM clients,booking
WHERE clients.cno=booking.cno AND cindate=SYSDATE;

/*6*/
CREATE SEQUENCE bookseq INCREMENT BY 5 START WITH 3000;

/*7*/
ALTER TABLE booking
ADD book_id VARCHAR(15);

/*8*/
UPDATE booking set book_id=bookseq.NEXTVAL;

/*9*/
ALTER TABLE booking
ADD UNIQUE (book_id);

/*10*/
CREATE INDEX clientsidx on clients(clastname,cfirstname);








