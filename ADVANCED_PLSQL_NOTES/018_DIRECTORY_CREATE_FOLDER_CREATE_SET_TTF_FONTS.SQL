-- HR ILE CONNECT OL

CREATE OR REPLACE
DIRECTORY PDF_DIR
AS 'C:/PDFS';
/
CREATE OR REPLACE
DIRECTORY FONT_DIR
AS 'C:/FONTS';
/

-- SYS ILE CONNECT OL
GRANT READ, WRITE
ON DIRECTORY PDF_DIR
TO 'HR';
/
GRANT READ, WRITE
ON DIRECTORY FONT_DIR
TO 'HR';
/

GRANT CREATE ANY DIRECTORY TO HR;