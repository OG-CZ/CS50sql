-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to count how many prints by Hiroshige have English titles that refer to the “Eastern Capital”. Hiroshige’s prints were created in Japan’s “Edo period,” referencing the eastern capital city of Edo, now Tokyo.

SELECT * FROM "views";

SELECT COUNT("english_title") FROM "views" 
WHERE "english_title" LIKE '%Eastern Capital%' 
AND "artist" = 'Hiroshige';