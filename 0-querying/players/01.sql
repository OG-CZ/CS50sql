-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to find the hometown (including city, state, and country) of Jackie Robinson.

SELECT * FROM "players" LIMIT 100;

SELECT "birth_city", "birth_state", "birth_country" FROM "players" 
WHERE "first_name" = 'Jackie' AND "last_name" = 'Robinson';