-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables


-- ### write a query to find the titles of episodes that do not yet have a listed topic.

SELECT * FROM "episodes"; -- view all data in episodes table

SELECT "title" FROM "episodes" WHERE "topic" IS NULL;