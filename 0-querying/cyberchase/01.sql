-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables


-- ### write a SQL query to list the titles of all episodes in Cyberchase’s original season, Season 1.

SELECT * FROM "episodes"; -- view all data in episodes table

SELECT "title" FROM "episodes" WHERE "season" = 1;