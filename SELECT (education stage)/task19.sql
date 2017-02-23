SELECT DISTINCT
  maker Maker,
  AVG(screen) Avg_screen
FROM Product
INNER JOIN Laptop
  ON Product.model = Laptop.model
WHERE type = 'Laptop'
GROUP BY maker