-- A parent wants to send their child to a district with many other studentd. In 8.sql, write a SQL query to display the names of all school districts and the number of pupils enrolled in each.

SELECT d."name", e."pupils" 
FROM districts AS d
JOIN expenditures AS e ON d."id" = e."district_id"
GROUP BY d."name";
