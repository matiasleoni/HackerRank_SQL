SELECT basename
FROM(
SELECT students.id baseid, students.name basename, friends.friend_id friendid, 
packages.salary basesalary
FROM students
LEFT JOIN friends ON students.id = friends.id
LEFT JOIN packages ON packages.id = students.id) AS provisorio
LEFT JOIN packages ON packages.id = provisorio.friendid
WHERE provisorio.basesalary < packages.salary
ORDER BY packages.salary ASC