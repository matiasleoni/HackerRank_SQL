SELECT CONCAT(Name, '(', LEFT(Occupation,1),')')
FROM OCCUPATIONS
ORDER BY Name;
WITH _prov AS(
SELECT COUNT(Name) AS num,
CONCAT('There are a total of ',COUNT(Name),' ',LOWER(Occupation),'s.') AS sent
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY num, Occupation)
SELECT sent
FROM _prov;