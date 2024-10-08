DECLARE
  TYPE NDT_SAYILAR
  IS
  TABLE OF INTEGER;

  DIZI NDT_SAYILAR := NDT_SAYILAR(14, 18,5, 7, 99);
BEGIN
  PRINT('');
  PRINT('ORIJINAL');

  FOR I IN 1..DIZI.COUNT
  LOOP
    PRINT('DIZI: ' || I || ' DEGER: ' || DIZI(I));
  END LOOP;

  DIZI.DELETE(2); --<SILDIK

  PRINT('');

  FOR I IN 1..DIZI.COUNT
  LOOP
    IF DIZI.EXISTS(I) THEN
      PRINT('DIZI: ' || I || 'DEGER: ' || DIZI(I));
    ELSE
      PRINT(I || '. INDEX YOKTUR');
    END IF;
  END LOOP;

  DIZI(2) := 159;

  PRINT('2. INDEX ELEMAN EKLENDI');

  FOR I IN 1..DIZI.COUNT
  LOOP
    IF DIZI.EXISTS(I) THEN
      PRINT('DIZI: ' || I || 'DEGER: ' || DIZI(I));
    ELSE
      PRINT(I || '. INDEX YOKTUR');
    END IF;
  END LOOP;

  DIZI.DELETE(2, 4); --<<2 VE 4. ELEMAN ARALIĞINI SILER. 2,3,4 SILINIR.
  PRINT('2,3,4 INDEX ELEMAN SILINDI');

  FOR I IN 1..DIZI.COUNT
  LOOP
    IF DIZI.EXISTS(I) THEN
      PRINT('DIZI: ' || I || 'DEGER: ' || DIZI(I));
    ELSE
      PRINT(I || '. INDEX YOKTUR');
    END IF;
  END LOOP;

  DIZI.DELETE; --<< TUM ELEMANLARI SILER.

  PRINT('TÜM ELEMANLAR SILINDI');

  FOR I IN 1..DIZI.COUNT
  LOOP
    IF DIZI.EXISTS(I) THEN
      PRINT('DIZI: ' || I || 'DEGER: ' || DIZI(I));
    ELSE
      PRINT(I || '. INDEX YOKTUR');
    END IF;
  END LOOP;
END;
