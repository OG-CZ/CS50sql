-- Designing
SELECT 
    "author", 
    "title"
FROM longlist
LIMIT 5;

-- under the hood
.schema

-- CREATE TABLE IF NOT EXISTS "longlist" (
--     "isbn" TEXT,
--     "title" TEXT,
--     "author" TEXT,
--     "translator" TEXT,
--     "format" TEXT,
--     "pages" INTEGER,
--     "publisher" TEXT,
--     "published" TEXT,
--     "year" INTEGER,
--     "votes" INTEGER,
--     "rating" REAL
-- );