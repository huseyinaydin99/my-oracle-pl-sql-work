DECLARE
    WADI    CHAR(15);
    WSOYADI VARCHAR2(15);
BEGIN
    WADI := 'HUSEYIN';
    WSOYADI := 'AYDIN';
    DBMS_OUTPUT.PUT_LINE(WADI || ' ' || WSOYADI);
END;

SET SERVEROUTPUT ON;