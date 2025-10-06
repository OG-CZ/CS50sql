-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables


-- ### write a SQL query to list the titles and topics of all episodes teaching fractions.

SELECT * FROM "episodes"; -- view all data in episodes table

SELECT "title" FROM "episodes" WHERE "topic" LIKE '%Fraction%';