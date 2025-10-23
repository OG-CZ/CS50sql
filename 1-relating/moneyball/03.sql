-- Your team is going to need a great home run hitter. Ken Griffey Jr., a long-time Silver Slugger and Gold Glove award winner, might be a good prospect. In 3.sql, write a SQL query to find Ken Griffey Jr.’s home run history.

SELECT 
    "year",
    "HR"
FROM performances
WHERE "player_id" IN (
    SELECT "id"
    FROM players
    WHERE "first_name" = 'Ken'
    AND "last_name" = 'Griffey'
    AND "birth_year" = 1969
)
ORDER BY "year" DESC;