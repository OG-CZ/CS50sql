-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to list the titles of all episodes in Cyberchase’s original season, Season 1.

SELECT * FROM "episodes"; -- list the titles of episodes from season 6 (2008) that were released early, in 2007.

SELECT "title" FROM "episodes" WHERE "season" = 6 AND "air_date" LIKE '2007%';