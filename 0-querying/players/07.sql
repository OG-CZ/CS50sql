-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to count the number of players who bat (or batted) right-handed and throw (or threw) left-handed, or vice versa.

SELECT * FROM "players" LIMIT 100;

SELECT COUNT(*) FROM "players" 
WHERE ("bats" = 'R' AND "throws" = 'L') OR ("bats" = 'L' AND "throws" = 'R');