CREATE TABLE EMP_XML2 OF XMLTYPE;

CREATE OR REPLACE
PROCEDURE XMLPROC
IS
    TXTDOSYA UTL_FILE.FILE_TYPE;
    WVERI VARCHAR2(4000);
BEGIN
    DELETE
    FROM EMP_XML2;
    TXTDOSYA := UTL_FILE.FOPEN('TEXT_DIR', 'DOSYA5.XML', 'W');
    FOR I IN (SELECT SYS_XMLAGG(
        XMLELEMENT("EMP",
            XMLFOREST(E.EMPNO, E.ENAME, E.JOB, E.HIREDATE, E.SAL, E.COMM)
        )
    ) VERILER
    FROM EMP E)
    LOOP
        BEGIN
            INSERT
            INTO EMP_XML2
            VALUES(I.VERILER);
            COMMIT;
        END;
    END LOOP;
    SELECT X.GETCLOBVAL()
    INTO WVERI
    FROM EMP_XML2 X;

    UTL_FILE.PUT_LINE(TXTDOSYA, WVERI);
    UTL_FILE.FCLOSE(TXTDOSYA);
END;

EXEC XMLPROC;

SELECT *
FROM EMP_XML2;