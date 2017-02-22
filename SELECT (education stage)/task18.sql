SELECT DISTINCT
  maker,
  price
FROM Product
INNER JOIN Printer
  ON Product.model = Printer.model
WHERE Printer.price IN (SELECT
  MIN(temp.price)
FROM (SELECT
  price
FROM Printer
WHERE color = 'y') AS temp)
AND color = 'y'