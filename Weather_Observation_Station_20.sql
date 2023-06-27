SELECT
CASE WHEN COUNT(*)%2 =0 THEN ROUND(SUM(LAT_N)/2,4)
    ELSE ROUND(SUM(LAT_N),4)
END
FROM(
SELECT * FROM (
  SELECT
    ROW_NUMBER() OVER (ORDER BY LAT_N ASC) AS rownumber,
    LAT_N
  FROM station
) AS foo
WHERE rownumber = (SELECT FLOOR(CAST(COUNT(*) AS float8)/2)+1 FROM station)
    OR rownumber = (SELECT CEIL(CAST(COUNT(*) as float8)/2) FROM station)
    ) as foo2