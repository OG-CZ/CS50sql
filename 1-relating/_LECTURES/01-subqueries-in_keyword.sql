-- ### sqlite prompt formats
/*
.headers on/off -> Show or hide column names

.mode column -> Outputs aligned text columns (default for readability)

.mode box -> Output results in a boxed table format
*/

-- ### subqueries

-- the logic here is we only know the publisher name but not ID but because of name we can get ID
SELECT "id" FROM publishers WHERE "publisher" = 'MacLehose Press';  -- get ID, returns 12
SELECT "title" FROM books WHERE "publisher_id" = 12;                -- know title of based of 12

-- You use a subquery when you only know the publisher's name, not their ID.
SELECT "title" FROM books WHERE "publisher_id" = (
    SELECT "id" FROM publishers WHERE "publisher" = 'MacLehose Press'
);

-- we only know title and we wanna the know rating of the title
SELECT "id" FROM books WHERE "title" = 'In Memory of Memory';   -- get ID, returns as 33
SELECT "rating" FROM ratings WHERE "book_id" = 33;              -- now we can get the rating based from that ID

SELECT "rating" 
FROM ratings 
WHERE "book_id" = (
    SELECT "id" 
    FROM books 
    WHERE "title" = 'In Memory of Memory'
);

-- ### many-to-many

SELECT "name" 
FROM authors              -- get name from from author id
WHERE "id" = (
    SELECT "author_id" 
    FROM authored    -- get authored_id from book id
    WHERE "book_id" = (
        SELECT "id" 
        FROM books          -- get id from books table based of title
        WHERE "title" = 'Flights'
    ) 
);

SELECT "name" 
FROM authors
WHERE "id" = ( 
    SELECT "author_id" 
    FROM authored 
    WHERE "book_id" = ( 
        SELECT "id" 
        FROM books 
        WHERE "title" = 'The Birthday Party'
        )
);

-- ### IN 

SELECT "id" 
FROM authors 
WHERE "name" = 'Fernanda Melchor';


-- without IN, this results only one title from the author
SELECT "title" 
FROM books 
WHERE "id" = (
    SELECT "book_id" 
    FROM authored 
    WHERE "author_id" = (
        SELECT "id" 
        FROM authors 
        WHERE "name" = 'Fernanda Melchor'
        )
);

-- with IN, this retunrs all list of title from the author
SELECT "title" 
FROM books 
WHERE "id" 
IN (
    SELECT "book_id" 
    FROM authored 
    WHERE "author_id" = (
        SELECT "id" 
        FROM authors
        WHERE "name" = 'Fernanda Melchor'
    )
);