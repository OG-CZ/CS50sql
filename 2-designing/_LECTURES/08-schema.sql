CREATE TABLE cards (
    "id" INTEGER, 
    PRIMARY KEY("id")                                    
);

CREATE TABLE stations (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,                    
    "line" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE swipes (
    "id" INTEGER,
    "card_id" INTEGER,
    "station_id" INTEGER,
    "type" TEXT NOT NULL CHECK("type" IN ('enter', 'exit', 'deposit')),             -- only choose type inside our own conditions
    "datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,                          -- special keyword in sql that creates a curent time if we dont input something
    "amount" NUMERIC NOT NULL CHECK("amount" != 0),                                 -- value must not be equal to 0
    PRIMARY KEY("id"),
    FOREIGN KEY("card_id") REFERENCES cards("id"),
    FOREIGN KEY("station_id") REFERENCES stations("id")
);