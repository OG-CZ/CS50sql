-- create a sql file
code schema.sql

-- create table riders
CREATE TABLE riders (
    "id" INTEGER,
    "name" TEXT
);

CREATE TABLE stations (
    "id" INTEGER,
    "name" TEXT,
    "line" TEXT
);

CREATE TABLE visits (
    "id" INTEGER,
    "rider_id" INTEGER,
    "station_id" INTEGER,
);

-- open mbta.db
sqlite3 mbta.db

-- check before
.schema
-- ....... no-output

-- read 03-schema.sql for mbta.db
.read 03-schema-type_affinities.sql     -- take any file and read that in a database

-- check after
.schema
-- CREATE TABLE visits (
--     "rider_id",
--     "station_id"
-- );
-- CREATE TABLE stations (
--     "id" INTEGER,
--     "name" TEXT,
--     "line" TEXT
-- );
-- CREATE TABLE riders (
--     "id" INTEGER,
--     "name" TEXT
-- );