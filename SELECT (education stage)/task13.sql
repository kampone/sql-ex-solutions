SELECT
  AVG(speed)
FROM Product
INNER JOIN PC
  ON Product.model = PC.model
WHERE Product.maker = 'A'