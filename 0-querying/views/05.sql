-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to find the highest contrast value of prints by Hokusai. Name the column “Maximum Contrast”. Does Hokusai’s prints most contrasting print actually have much contrast?

SELECT * FROM "views";

SELECT MAX("contrast") AS 'Max contrast' FROM "views" WHERE "artist" = 'Hokusai';