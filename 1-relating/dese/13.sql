-- In 13.sql, write a SQL query to answer a question you have about the data! The query should:
-- Involve at least one JOIN or subquery

-- joining all data

SELECT 
    s.*, 
    d.*,
    se.*,
    e.*
FROM schools AS s
JOIN districts AS d ON s."district_id" = d."id"
JOIN staff_evaluations AS se ON se."district_id" = d."id"
JOIN expenditures AS e ON e."district_id" = d."id"
JOIN graduation_rates AS gr ON gr."school_id" = s."id"
ORDER BY s."district_id" DESC;