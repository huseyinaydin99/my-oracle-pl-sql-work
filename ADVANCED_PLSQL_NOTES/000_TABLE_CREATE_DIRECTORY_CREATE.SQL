CREATE OR REPLACE
DIRECTORY TEXT_DIR
AS 'C:\TEXTS';

GRANT READ, WRITE
ON DIRECTORY TEXT_DIR
TO HR; -- HR KULLANICISINA TEXT_DIR UZERINDE OKUMA VE YAZMA YETKISI VERDIK.

