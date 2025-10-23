-- Which teams might be the biggest competition for the A’s this year? In 6.sql, write a SQL query to return the top 5 teams, sorted by the total number of hits by players in 2001.

SELECT 
    t."name",
    SUM(p."H")
FROM performances as p
JOIN teams as t ON p."team_id" = t."id"
WHERE p."year" = 2001
GROUP BY t."name"
ORDER BY SUM(p."H") DESC
LIMIT 5;