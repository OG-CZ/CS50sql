-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables


-- ### list the season number of, and title of, the first episode of every season.

SELECT * FROM "episodes"; -- view all data in episodes table

SELECT "season", "title" FROM "episodes" WHERE "episode_in_season" = 1;