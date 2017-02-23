SELECT
  maker,
  COUNT(model) count
FROM Product
WHERE type = 'PC'
GROUP BY maker
HAVING COUNT(model) >= 3