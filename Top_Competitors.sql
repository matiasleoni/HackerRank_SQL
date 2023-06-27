SELECT provisorio.fooid, hackers.name
FROM(
SELECT submissions.hacker_id AS fooid, COUNT(submissions.challenge_id) AS foocount
FROM submissions
LEFT JOIN challenges on challenges.challenge_id = submissions.challenge_id
LEFT JOIN difficulty on challenges.difficulty_level=difficulty.difficulty_level
WHERE submissions.score = difficulty.score
GROUP BY submissions.hacker_id
) AS provisorio
LEFT JOIN hackers ON provisorio.fooid = hackers.hacker_id
WHERE provisorio.foocount>1
ORDER BY provisorio.foocount DESC, provisorio.fooid ASC