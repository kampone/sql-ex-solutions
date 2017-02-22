SELECT DISTINCT
  maker,
  type
FROM Product
WHERE maker IN (SELECT
  maker
FROM Product
GROUP BY maker,
         type
HAVING COUNT(model) > 1)
AND maker IN (SELECT
  maker
FROM Product
GROUP BY maker
HAVING COUNT(DISTINCT type) = 1)