WITH _prov AS(
SELECT DISTINCT city, LEFT(city,1) izq, RIGHT(city,1) der
FROM station
    )
SELECT city answer
FROM _prov
WHERE der != 'a' AND der != 'e' AND der != 'i' AND der != 'o' AND der != 'u'