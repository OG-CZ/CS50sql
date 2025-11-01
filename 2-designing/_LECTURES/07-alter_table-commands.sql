-- rename visits to swipes 
ALTER TABLE visits 
RENAME TO swipes;

-- check output after
.schema
-- CREATE TABLE IF NOT EXISTS "swipes" (                -- swipes changed to visits
--     "rider_id",
--     "station_id"
-- );
-- CREATE TABLE stations (
--     "id" INTEGER,
--     "name" TEXT,
--     "line" TEXT
-- );

-- add a new column on swipes table
ALTER TABLE swipes
ADD COLUMN "ttpe" TEXT;

-- check output
.schema
-- CREATE TABLE IF NOT EXISTS "swipes" (
--     "rider_id",
--     "station_id"
-- , "ttpe" TEXT);                                      -- oops! but we inserted "ttpe" instead of "type"

-- fix rename ttpe to type
ALTER TABLE swipes
RENAME COLUMN "ttpe" TO "type";

-- check output 
.schema
-- CREATE TABLE IF NOT EXISTS "swipes" (
--     "rider_id",
--     "station_id"
-- , "type" TEXT);                                      -- now, it fixed type!

-- deleting the type column from swipes table
ALTER TABLE swipes
DROP COLUMN "type";

-- check output
.schema
-- CREATE TABLE IF NOT EXISTS "swipes" (
--     "rider_id",
--     "station_id"
-- );                                                  -- type column is gone, back to where we came