DECLARE
  --<< BU IKISI VERITABANINDA TANIMLANABILIR.
  TYPE T_NESTED IS TABLE OF VARCHAR2(50);
  TYPE T_VARRAY IS VARRAY(5) OF NUMBER(17, 2);

  --<<BU DORDU VERITABANINDA TANIMLANAMAZ!!!!
  TYPE T_ASSOC_ARRAY_NUM IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
  TYPE T_ASSOC_ARRAY_STR IS TABLE OF VARCHAR2(50) INDEX BY PLS_INTEGER;
  TYPE T_ASSOC_ARRAY_STR2 IS TABLE OF VARCHAR2(50) INDEX BY VARCHAR2(64);

  --<< BU IKISI VERITABANINDA TANIMLANABILIR.
  NDT_VAR T_NESTED;
  VARR_VAR T_VARRAY;

  --<<BU DORDU VERITABANINDA TANIMLANAMAZ!!!!
  ASSOC_VAR1 T_ASSOC_ARRAY_NUM;
  ASSOC_VAR2 T_ASSOC_ARRAY_STR;
  ASSOC_VAR3 T_ASSOC_ARRAY_STR2;
BEGIN
  --<<BU IKISI HAZIRLAYICI METOT OLMADAN OLMAZ
  NDT_VAR := T_NESTED('SQL','PL/SQL','DBA','APEX');
  VARR_VAR := T_VARRAY(10, 2.7, 5, 9.7, 1.2);

  --<< DEGER NUMBER INDEX PLS_INTEGER
  ASSOC_VAR1(99) := 51;
  ASSOC_VAR1(8) := 101;

  --<< DEGER VARCHAR2 INDEX PLS_INTEGER
  ASSOC_VAR2(51) := 'NIGDE';
  ASSOC_VAR2(50) := 'NEVSEHIR';

  --<<DEGER VARCHAR2 / INDEX VARCHAR2
  ASSOC_VAR3('NIGDE') := '51 - IC ANADOLU BOLGESI';
END;
