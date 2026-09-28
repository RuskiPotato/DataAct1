(Fantasy case, not actually plausible with this dataset.)

The database is intended to serve as the foundation for a sports analytics platform designed for Formula 1 enthusiasts, fantasy league operators, and prediction or betting services. Rather than requiring users to consult multiple disparate sources for historical statistics, this system provides a single, structured source of truth for:

Historical championship and podium records, supporting comparative analyses (e.g., all-time driver rankings) and trivia-style features
Driver and constructor performance trends, which may be leveraged to power fantasy league scoring systems and predictive models
An extensible foundation capable of accommodating live race data, lap times, and standings in support of a future subscription-based analytics offering

seasons.id_constructors_champion > teams.id_team
season_podiums.season_year > seasons.season_year
season_podiums.id_driver > drivers.id_driver

PODIUMS 

SELECT s.season_year,
       MAX(CASE WHEN p.position = 1 THEN CONCAT(d.first_name,' ',d.last_name) END) AS champion,
       MAX(CASE WHEN p.position = 2 THEN CONCAT(d.first_name,' ',d.last_name) END) AS second,
       MAX(CASE WHEN p.position = 3 THEN CONCAT(d.first_name,' ',d.last_name) END) AS third,
       t.team_name AS constructors_champion
FROM seasons s
JOIN season_podiums p ON p.season_year = s.season_year
JOIN drivers d ON d.id_driver = p.id_driver
JOIN teams t ON t.id_team = s.constructors_champion
GROUP BY s.season_year, t.team_name
ORDER BY s.season_year;

TOTAL TITLES PER DRIVER (FROM 2006)

SELECT CONCAT(d.first_name,' ',d.last_name) AS driver, COUNT(*) AS titles
FROM season_podiums p
JOIN drivers d ON d.id_driver = p.id_driver
WHERE p.position = 1
GROUP BY d.id_driver
ORDER BY titles DESC; 

TOTAL TOP THREE FINISHES PER DRIVER

SELECT CONCAT(d.first_name,' ',d.last_name) AS driver, COUNT(*) AS podiums
FROM season_podiums p
JOIN drivers d ON d.id_driver = p.id_driver
GROUP BY d.id_driver
ORDER BY podiums DESC;
