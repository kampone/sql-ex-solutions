SELECT DISTINCT
  type,
  Laptop.model,
  speed
FROM Laptop
INNER JOIN Product
  ON Laptop.model = Product.model
WHERE speed < ALL (SELECT
  speed
FROM PC)