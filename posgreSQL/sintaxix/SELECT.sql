ILIKE => funciona como like pero no tiene presente mayusculas

UPDATE country
SET last_update = '2022-01-01'
WHERE country = "test"
RETURNING *;
/*
RETURNING devuelve los ids de lo que se actualizo
*/