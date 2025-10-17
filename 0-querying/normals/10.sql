-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### There are 180 whole degrees of latitude. In 10.sql, write a SQL query to determine how many points of latitude we have at least one data point for. (Why might we not have data points for all latitudes?)

SELECT COUNT(DISTINCT "latitude") FROM "normals";