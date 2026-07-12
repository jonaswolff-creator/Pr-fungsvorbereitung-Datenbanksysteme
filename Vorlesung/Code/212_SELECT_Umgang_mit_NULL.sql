-- @block IFNULL:
SELECT IFNULL('sinnvoller Wert', 'N/A') FROM DUAL;

-- @block IFNULL:
SELECT IFNULL(NULL, 'N/A') FROM DUAL;

-- @block NVL2:
SELECT NVL2('sinnvoller Wert', 1, 2) FROM DUAL;

-- @block NVL2:
SELECT NVL2(NULL, 1, 2) FROM DUAL;

-- @block NULLIF:
SELECT NULLIF(1,1) FROM DUAL;

-- @block NULLIF:
SELECT NULLIF(1,2) FROM DUAL;
