SELECT name
FROM(
SELECT name, marks, id, RIGHT(name,3) der3
FROM students
WHERE marks >75
ORDER BY der3, id) as foo