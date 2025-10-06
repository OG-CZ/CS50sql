-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to list the average colors of prints by Hokusai that include “river” in the English title. (As an aside, do they have any hint of blue?)

SELECT * FROM "views";

SELECT "average_color" FROM "views" WHERE "english_title" LIKE '%river%' AND "artist" = 'Hokusai';

