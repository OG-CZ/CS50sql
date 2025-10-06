-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### list the titles of episodes from season 5, in reverse alphabetical order.

SELECT * FROM "episodes"; -- view all data in episodes table

SELECT "title" FROM "episodes" WHERE "season" = 5 ORDER BY "title" DESC;