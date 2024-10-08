DESC EMPLOYEES;

CREATE TABLE EMPLOYEES2
AS
SELECT * FROM EMPLOYEES;

DECLARE
EMP_ID EMPLOYESS2.EMPLOYEE_ID%TYPE;
EMP_FIRST_NAME EMPLOYESS2.FIRST_NAME%TYPE := 'HUSEYIN';
EMP_LAST_NAME EMPLOYEES2.LAST_NAME%TYPE := 'AYDIN';
EMP_JOB_ID EMPLOYEES2.JOB_ID%TYPE := 'JAVA';
BEGIN
SELECT NVL(MAX(EMPLOYEE_ID), 0) + 1
INTO EMP_ID
FROM EMPLOYEES2;

INSERT INTO EMPLOYEES2(
  EMPLOYEE_ID,
  FIRST_NAME,
  LAST_NAME,
  JOB_ID,
  EMAIL,
  HIRE_DATE
)
VALUES(
  EMP_ID, EMP_FIRST_NAME, EMP_LAST_NAME, EMP_JOB_ID, 'ABC@CBL.COM', SYSDATE
);

UPDATE EMPLOYEES2
SET JOB_ID = '.NET'
WHERE EMPLOYEE_ID = EMP_ID;

/*
DELETE EMPLOYEES2
WHERE EMPLOYEE_ID = EMP_ID
RETURNING EMPLOYEE_ID, FIRST_NAME, JOB_ID
INTO EMP_ID, EMP_FIRST_NAME, EMP_JOB_ID;
*/

--ROLLBACK;
COMMIT;
DBMS_OUTPUT.PUT_LINE(EMP_ID || ' ' || EMP_FIRST_NAME || ' ' || EMP_JOB_ID);

END;
