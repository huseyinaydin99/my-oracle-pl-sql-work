DECLARE
  X NUMBER := 0;
  FUNCTION TOPLAM(
    A NUMBER,
    B NUMBER
  ) RETURN NUMBER
  IS
    TOTAL NUMBER := 0;
  BEGIN
    TOTAL := A + B;
    RETURN TOTAL;
  END;
BEGIN
  X := TOPLAM(3, 5);
  PRINT(X);
END;
