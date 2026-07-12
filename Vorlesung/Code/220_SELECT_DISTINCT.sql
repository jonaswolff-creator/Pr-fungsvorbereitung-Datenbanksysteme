USE hans;

-- @block ohne DISTINCT -> keine Duplikatfilterung
SELECT name FROM studierende;

-- @block mit DISTINCT -> Duplikate werden gefiltert
SELECT DISTINCT name FROM studierende;
