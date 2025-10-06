-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to count how many prints by Hokusai include “Fuji” in the English title. Though all of Hokusai’s prints focused on Mt. Fuji, in how many did “Fuji” make it into the title?

SELECT * FROM "views";

SELECT COUNT("print_number") FROM "views" WHERE "artist" = 'Hokusai' AND "english_title" LIKE '%Fuji%';