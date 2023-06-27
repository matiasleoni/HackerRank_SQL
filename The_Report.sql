WITH _foo AS(
    SELECT students.name as fooname,
    grades.grade as foograde,
    students.marks as foomark
    FROM students
    LEFT JOIN grades ON
    (students.marks <= grades.Max_Mark AND students.marks >=grades.Min_Mark)
)
SELECT 
CASE WHEN foograde < 8 THEN Null
    WHEN foograde >= 8 THEN fooname
    END,
foograde, foomark
FROM _foo
ORDER BY foograde DESC, fooname ASC, foomark ASC