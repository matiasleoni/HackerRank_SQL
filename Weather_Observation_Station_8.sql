WITH _prov AS(
SELECT DISTINCT city, LEFT(city,1) izq, RIGHT(city,1) der
FROM station
    )
SELECT city answer
FROM _prov
WHERE (izq = 'A' OR izq = 'E' OR izq = 'I' OR izq = 'O' OR izq = 'U')
    AND (der = 'a' OR der = 'e' OR der = 'i' OR der = 'o' OR der = 'u')