-- You need to make a recommendation about which player (or players) to avoid recruiting. In 7.sql, write a SQL query to find the name of the player who’s been paid the highest salary, of all time, in Major League Baseball.

SELECT 
    "first_name",
    "last_name"
FROM players as p
JOIN salaries as s 
    ON p."id" = s."player_id"
ORDER BY "salary" DESC
LIMIT 1;