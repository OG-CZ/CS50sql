-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables


-- ### find the title of the holiday episode that aired on December 31st, 2004.

SELECT * FROM "episodes"; -- view all data in episodes table

SELECT "title" FROM "episodes" WHERE "air_date" = '2004-12-31';