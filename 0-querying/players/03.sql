-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to find the ids of rows for which a value in the column debut is missing.

SELECT * FROM "players" LIMIT 100;

SELECT "id" FROM "players" WHERE "debut" IS NULL;