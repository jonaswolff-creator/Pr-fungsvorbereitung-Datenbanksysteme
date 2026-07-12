-- @block CONCAT:
SELECT CONCAT('Hello', 'World') FROM DUAL;

-- @block SUBSTR:
SELECT SUBSTR('HS Ansbach', 7, 4) FROM DUAL;

-- @block LENGTH:
SELECT LENGTH('HS Ansbach') FROM DUAL;

-- @block INSTR:
SELECT INSTR('foobarbar', 'bar') FROM DUAL;

-- @block LPAD
SELECT LPAD(2000, 10, '*') FROM DUAL;

-- @block REPLACE
SELECT REPLACE('SQL ist langweilig', 'langweilig', 'spannend') FROM DUAL;