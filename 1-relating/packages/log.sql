
-- *** The Lost Letter ***

-- sender info
SELECT "id" 
FROM addresses 
WHERE "address" = '2 Finnigan Street'; -- 854 id of sender
SELECT "package_id", "action" 
FROM scans 
WHERE "package_id" = ( -- know package id of the sender 
    SELECT "id" 
    FROM addresses 
    WHERE "address" = '2 Finnigan Street' 
);

-- finding specifics
SELECT "id" FROM addresses WHERE "address" = '900 Somerville Avenue'; -- 432 id of receiver 
SELECT "contents", "id" FROM packages WHERE "from_address_id" = 432; -- 384 id of of the packaged based of receiver
SELECT  "address_id", "action", "timestamp" FROM scans WHERE "package_id" = 384; -- get the info of the package

-- getting info from scans using subquery
SELECT  "address_id", "action", "timestamp" FROM scans WHERE "package_id" = (
    SELECT "id" FROM packages WHERE "from_address_id" = 432
);

-- getting scans info and joining it with addresses info
SELECT scans."address_id", scans."timestamp", addresses."address", addresses."type" FROM scans
JOIN addresses ON addresses."id" = scans."address_id"
WHERE "package_id" = 384;

-- ### complete subquery in one line
SELECT scans."address_id", scans."timestamp", addresses."address", addresses."type" 
FROM scans
JOIN addresses 
ON addresses."id" = scans."address_id"
WHERE "package_id" = (
    SELECT "id" 
    FROM packages 
    WHERE "from_address_id" = 432
);

-- *** The Devious Delivery ***

-- find fiftyville -> fail
SELECT * FROM addresses WHERE "address" LIKE '%fiftyville%';

-- find box -> no results even address IS NULL;
SELECT packages."contents" 
FROM packages
JOIN addresses 
ON package."from_address_id" = addresses."id"
WHERE ("contents" LIKE '%box%' OR "contents" LIKE '%boxes%') 
AND addresses."address" IS NULL; 

-- finding form_address_id that is null -> FOUND IT!!
SELECT * FROM packages 
WHERE "from_address_id" IS NULL; -- id=5098 and to_address_id=50

-- ### complete query -> knowing content and type of residential
SELECT "address", "type" 
FROM addresses
WHERE "id" = (
    SELECT "address_id" 
    FROM scans
    WHERE "package_id" = (
        SELECT "id" 
        FROM packages
        WHERE "from_address_id" IS NULL
        AND "action" = 'Drop'
    )
);

-- *** The Forgotten Gift ***

-- locate 728 maple place
SELECT * 
FROM addresses 
WHERE "address" 
LIKE '%109 Tileston Street%';

-- what is the content inside : Flowers, 4983
SELECT "contents", "to_address_id" 
FROM packages
WHERE "from_address_id" = ( 
    SELECT "id" 
    FROM addresses 
    WHERE "address" = '109 Tileston Street'
);

-- who has the forgotten gift?

-- selecting id package: 9523
SELECT "id"  
FROM packages
WHERE "from_address_id" = ( 
    SELECT "id" 
    FROM addresses 
    WHERE "address" = '109 Tileston Street'
); 

-- getting package info
SELECT DISTINCT "driver_id",  "action", "timestamp"
FROM scans
WHERE "package_id" = 9523 AND "action" IN 'Pick';

-- getting driver name
SELECT "id", "name"
FROM drivers
WHERE "id" = 17; -- 17, Mikel