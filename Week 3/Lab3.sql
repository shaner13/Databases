alter session  set current_schema = SRiedy;

--1
describe POBYRNE.H_Hotel;

--2
CREATE TABLE MY_HOTEL AS (

  SELECT
  
    HOTEL_NO,
    H_NAME,
    ADDRESS
  
  FROM POBYRNE.H_HOTEL
  
);

--3
SELECT * FROM MY_HOTEL;

--4
ALTER TABLE MY_HOTEL
ADD NIGHTLY_FEE NUMBER(3);

--5
UPDATE MY_HOTEL 
SET NIGHTLY_FEE = 150 
WHERE HOTEL_NO > 400;

--6
ALTER TABLE MY_HOTEL 
ADD CONSTRAINT PK_HOTEL_NO PRIMARY KEY (HOTEL_NO);

--7
CREATE TABLE MY_BOOKING (

  BOOKCODE NUMBER(8) 
    PRIMARY KEY,   
  STARTDATE DATE 
    DEFAULT SYSDATE
    NOT NULL,
  ENDDATE DATE 
    DEFAULT SYSDATE
    NOT NULL,
  HOTEL_NO NUMBER(6)
    NOT NULL
    REFERENCES MY_HOTEL
    
);

SELECT * FROM MY_HOTEL;

--9
INSERT INTO MY_BOOKING VALUES (
   4673984,         --BookCode
   '15/SEP/2014',   --StartDate
   '16/SEP/2014',   --EndDate
   300              --Hotel_No
);

INSERT INTO MY_BOOKING VALUES (
   39127441,         --BookCode
   '09/MAR/2017',    --StartDate
   '23/MAR/2017',    --EndDate
   301               --Hotel_No
);

INSERT INTO MY_BOOKING VALUES (
   56823768,         --BookCode
   '05/DEC/2017',    --StartDate
   '07/DEC/2017',    --EndDate
   302               --Hotel_No
);

INSERT INTO MY_BOOKING VALUES (
   94556794,         --BookCode
   '18/AUG/2020',    --StartDate
   '23/AUG/2020',    --EndDate
   400               --Hotel_No
);

SELECT * FROM MY_HOTEL JOIN MY_BOOKING USING(HOTEL_NO);

--10
COMMIT;
