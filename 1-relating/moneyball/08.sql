-- How much would the A’s need to pay to get the best home run hitter this past season? In 8.sql, write a SQL query to find the 2001 salary of the player who hit the most home runs in 2001.

SELECT "salary"
FROM "salaries"
WHERE "year" = 2001 AND "player_id" = (
    SELECT
        "player_id"
    FROM performances
    WHERE "year" = 2001
    GROUP BY "player_id"
    ORDER BY SUM("HR") DESC
    LIMIT 1
);