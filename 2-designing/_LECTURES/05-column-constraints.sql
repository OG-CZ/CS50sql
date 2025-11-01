-- create table riders
CREATE TABLE riders (
    "id" INTEGER,                                           -- so no need to put it here
    "name" TEXT,
    PRIMARY KEY("id")                                       -- this already have a NOT NULL
);

CREATE TABLE stations (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,                            -- a station`s name can be not null and must be unqiue only
    "line" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE visits (
    "id" INTEGER,
    "rider_id" INTEGER,
    "station_id" INTEGER,
    FOREIGN KEY("rider_id") REFERENCES riders("id"),
    FOREIGN KEY("station_id") REFERENCES stations("id")
);