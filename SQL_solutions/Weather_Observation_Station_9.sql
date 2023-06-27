WITH _prov AS(
SELECT DISTINCT city, LEFT(city,1) izq, RIGHT(city,1) der
FROM station
    )
SELECT city answer
FROM _prov
WHERE (izq != 'A' AND izq != 'E' AND izq != 'I' AND izq != 'O' AND izq != 'U')