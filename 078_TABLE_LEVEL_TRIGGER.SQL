CREATE OR REPLACE
TRIGGER DML_DEPARTMENTS
BEFORE
INSERT OR UPDATE OR DELETE
ON DEPARTMENTS
BEGIN
  IF TO_CHAR(SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
  OR TO_CHAR(SYSDATE, 'DY') IN('SAT', 'SUN', 'CMT', 'PAZ')
  THEN
    RAISE_APPLICATION_ERROR(0-20205, 'MESAIT SAATLERINDE ESLEM YAPILAMAZ!');
  END IF;
END;

DELETE
FROM DEPARTMENTS
WHERE DEPARTMENT_ID = 60;
