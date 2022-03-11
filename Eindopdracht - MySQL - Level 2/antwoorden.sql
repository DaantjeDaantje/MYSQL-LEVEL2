-- Opdracht 1
    SELECT races.name AS Race, circuits.name AS Circuit FROM races
    LEFT JOIN circuits ON races.circuitId = circuits.circuitId
    WHERE races.date = 2018;

-- Opdracht 2 
    SELECT races.name AS "Race_Naam", drivers.surname AS "Achternaam", driver_standing.points FROM races
    JOIN driver_standing ON driver_standing.raceId = races.raceId
    JOIN drivers ON driver_standing.driverId = drivers.driverId
    WHERE races.year = "2017" AND driver_standing.points = 10

-- Opdracht 3
    SELECT drivers.forename AS "Voornaam", drivers.surname AS "Achternaam", pitstops.duration AS "Pitstop_Tijd" FROM drivers
    JOIN pitstops ON pitstops.driverId = drivers.driverId
    WHERE pitstops.duration < 25

-- Opdracht 4
    SELECT constructors.name AS "Constructor", races.name AS "GrandPrix" FROM races
    JOIN constructors ON races.circuitId = constructors.constructorId
    WHERE constructors.name = "McLaren" AND races.year = "2010"

-- Opdracht 5
    SELECT circuits.name AS "Circuit", circuits.country AS "Country", races.name AS "GrandPrix", drivers.surname AS "Surname" FROM races
    LEFT JOIN circuits ON races.circuitId = circuits.circuitId
    JOIN drivers ON drivers.driverId = drivers.driverId
    WHERE races.year = "1950" AND drivers.surname LIKE "F%"