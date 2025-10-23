-- You need a player that can get hits. Who might be the most underrated? In 11.sql, write a SQL query to find the 10 least expensive players per hit in 2001.

SELECT 
    "first_name",
    "last_name",
    s."salary" / p."H" AS "dollars per hit"
FROM players
JOIN salaries AS s
    ON players."id" = s."player_id"
JOIN performances AS p
    ON players."id" = p."player_id" 
WHERE p."year" = 2001 
AND p."H" > 0 
AND p."year" = s."year"
ORDER BY 
    "dollars per hit" ASC, 
    "first_name" ASC, 
    "last_name" ASC
LIMIT 10;