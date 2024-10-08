DESC EMPLOYEES2;

SELECT DEPARTMENT_ID COUNT(*)
FROM EMPLOYEES2
GROUP BY DEPARTMENT_ID;

DECLARE
  REC_EMP EMPLOYEES2 %ROWTYPE;
BEGIN
  UPDATE EMPLOYEES2
  SET SALARY = SALARY * 1.20
  WHERE DEPARTMENT_ID = 50;

  IF SQL%FOUND THEN
    DBMS_OUTPUT.PUT_LINE('KISI UPDATE EDILDI ETKILENEN KAYIT SAYISI : ' || SQL%ROWCOUNT);
  ELSE
    DBMS_OUTPUT.PUT_LINE('UPDATE EDILECEK KAYIT YOK 1.');
  END IF;

  /*
  IF SQL%NOTFOUND THEN
    DBMS_OUTPUT.PUT_LINE('UPDATE EDILECEK KAYIT YOK 1.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('KISI UPDATE EDILDI ETKILENEN KAYIT SAYISI : ' || SQL%ROWCOUNT);
  END IF;
  */
  DELETE
  FROM EMPLOYEES2
  WHERE DEPARTMENT_ID IN(100, 80);

  IF SQL%ROWCOUNT <> 0 OR SQL%ROWCOUNT > 0 THEN
    DBMS_OUTPUT.PUT_LINE('KISI DELETE EDILDI ETKILENEN KAYIT SAYISI : ' || SQL%ROWCOUNT);
  END IF;

  IF SQL%FOUND THEN
    DBMS_OUTPUT.PUT_LINE('KISI DELETE EDILDI ETKILENEN KAYIT SAYISI : ' || SQL%ROWCOUNT);
  ELSE
    DBMS_OUTPUT.PUT_LINE('DELETE EDILECEK KAYIT YOK 1.');
  END IF;

  IF SQL%NOTFOUND THEN
    DBMS_OUTPUT.PUT_LINE('DELETE EDILECEK KAYIT YOK 1.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('KISI DELETE EDILDI ETKILENEN KAYIT SAYISI : ' || SQL%ROWCOUNT);
  END IF;
END;
