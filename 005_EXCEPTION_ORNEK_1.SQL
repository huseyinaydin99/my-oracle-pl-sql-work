CREATE OR REPLACE FUNCTION BOLME(A IN NUMBER, B IN NUMBER) RETURN NUMBER
IS
C NUMBER;
BEGIN
    C := A / B;
    RETURN C;
END;


DECLARE
    D NUMBER;
BEGIN
    D := BOLME(10, 0);
    DBMS_OUTPUT.PUT_LINE(D);
    EXCEPTION WHEN ZERO_DIVIDE THEN
       DBMS_OUTPUT.PUT_LINE('SIFIRA BÖLME SORUNSALI'); 
END;