-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables


-- ### find the production code for the episode “Hackerized!”.

SELECT * FROM "episodes"; -- view all data in episodes table

SELECT "production_code" FROM "episodes" WHERE "title" = 'Hackerized!';