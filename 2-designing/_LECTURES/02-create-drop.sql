-- creating a brand new database
sqlite3 mbta.db

-- creating table for RIDER
CREATE TABLE riders (
    "id",
    "name"
);

-- creating table for STATIONS
CREATE TABLE stations (
    "id",
    "name",
    "line"
);


-- show results
.schema
-- sqlite> .schema
-- CREATE TABLE riders (
--     "id",
--     "name"
-- );
-- CREATE TABLE stations (
--     "id",
--     "name",
--     "line"
-- );

-- to have a relation on the two table
CREATE TABLE visits (
    "rider_id",
    "station_id"
);

-- DROP Keyword
DROP TABLE riders;          -- completely remove riders table
DROP TABLE stations;        -- completely remove stations table

-- check reesult
.schema
-- CREATE TABLE visits (
--     "rider_id",
--     "station_id"
-- );