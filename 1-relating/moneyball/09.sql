-- What salaries are other teams paying? In 9.sql, write a SQL query to find the 5 lowest paying teams (by average salary) in 2001.

SELECT 
    t."name",
    ROUND(AVG(s."salary"), 2) AS "average salary"
FROM salaries AS s
JOIN teams as t 
    ON s."team_id" = t."id"
WHERE s."year" = 2001
GROUP BY t."id"
ORDER BY 'average salary' 
LIMIT 5;