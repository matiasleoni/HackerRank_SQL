(SELECT city, LENGTH(city) len
FROM station
ORDER BY len DESC, city DESC
LIMIT 1)
UNION
(SELECT city, LENGTH(city) len
FROM station
ORDER BY len, city
LIMIT 1)