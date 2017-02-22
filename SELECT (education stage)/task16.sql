SELECT DISTINCT
  A.model,
  B.model,
  A.speed,
  A.ram
FROM PC A,
     PC B
WHERE A.speed = B.speed
AND A.ram = B.ram
AND A.model > B.model