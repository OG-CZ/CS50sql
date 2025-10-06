-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables


-- ### write a SQL query to list the titles of all episodes in Cyberchase’s original season, Season 1.

SELECT * FROM "episodes"; -- view all data in episodes table

SELECT COUNT("id") FROM "episodes" 
WHERE "topic" IS NOT NULL 
AND "air_date" >= '2002-01-01' AND "season" = 1;