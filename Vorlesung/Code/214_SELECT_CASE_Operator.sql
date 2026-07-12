-- @block CASE:
SELECT CASE WHEN 1 >= 0 THEN 'positiv' ELSE 'negativ' END FROM DUAL

-- @block CASE:
SELECT CASE WHEN -1 >= 0 THEN 'positiv' ELSE 'negativ' END FROM DUAL

-- @block CASE:
SELECT Uhrzeit, CASE WHEN Uhrzeit < '12:00' THEN 'Vormittag' ELSE 'Nachmittag' END FROM hans.Raumbelegung;