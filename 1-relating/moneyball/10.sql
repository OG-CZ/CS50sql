SELECT 
    plyrs."first_name", 
    plyrs."last_name", 
    slrs."salary", 
    perf."year", 
    perf."HR"
FROM players AS plyrs
JOIN performances AS perf
    ON plyrs."id" = perf."player_id"
JOIN salaries AS slrsv
    ON plyrs."id" = slrs."player_id"
AND perf."year" = slrs."year"
ORDER BY 
    plyrs."id" ASC,
    slrs."year" DESC,
    perf."HR" DESC,
    slrs."salary" DESC;