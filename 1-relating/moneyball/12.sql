-- Hits are great, but so are RBIs! In 12.sql, write a SQL query to find the players among the 10 least expensive players per hit and among the 10 least expensive players per RBI in 2001.
SELECT "first_name", "last_name"
FROM (
    SELECT "first_name", "last_name", "id"
    FROM ( SELECT 
                "first_name",
                "last_name",
                players."id"
            FROM players
            JOIN performances as p
                ON players."id" = p."player_id"
            JOIN salaries as s
                ON players."id" = s."player_id"
            AND p."year" = s."year"
            WHERE p."year" = 2001
            AND p."H" > 0
            GROUP BY p."player_id"
            ORDER BY s."salary" / p."H"
            LIMIT 10
    )

    INTERSECT

    SELECT "first_name", "last_name", "id"
        FROM (
        SELECT
            "first_name",
            "last_name",
            players."id"
        FROM players
        JOIN performances AS p
            ON players."id" = p."player_id"
        JOIN salaries as s
            ON players."id" = s."player_id"
        AND p."year" = s."year"
        WHERE p."year" = 2001
        AND p."RBI" > 0
        GROUP BY p."player_id"
        ORDER BY s."salary" / p."RBI"
        LIMIT 10
    )
)
ORDER BY "id";