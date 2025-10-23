-- You need to make a recommendation about which players the team should consider hiring. With the team’s dwindling budget, the general manager wants to know which players were paid the lowest salaries in 2001. In 4.sql, write a SQL query to find the 50 players paid the least in 2001.

SELECT 
    p."first_name", 
    p."last_name",
    s."salary"
FROM players as p
JOIN salaries as s
ON p."id" = s."player_id"
WHERE s."year" = 2001
ORDER BY 
    "salary" ASC, 
    "first_name" ASC, 
    "last_name" ASC, 
    "player_id" ASC
LIMIT 50;