WITH numbers
AS
(
  SELECT number
  FROM (VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11)) AS n (number)),
months
AS
(
  SELECT DATENAME(MONTH, DATEADD(MONTH, number, DATEFROMPARTS(YEAR(GETDATE()), 1, 1))) AS month
        ,MONTH(DATEADD(MONTH, number, DATEFROMPARTS(YEAR(GETDATE()), 1, 1))) AS monthN
        ,DAY(EOMONTH(DATEADD(MONTH, number, DATEFROMPARTS(YEAR(GETDATE()), 1, 1)))) AS days
  FROM numbers)
SELECT month
      ,days
FROM months
ORDER BY monthN

