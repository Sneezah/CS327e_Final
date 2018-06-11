#select all crashes of an inputted type
SELECT * FROM fatal_crashes WHERE crash_type = [Motorcycle]
ORDER BY case_number ASC;

#select all crimes of an inputted type
SELECT * FROM crimes WHERE type_of_crime = [COUNTERFEITING]
ORDER BY incident_number ASC

#select crash based on inputted case number
SELECT * FROM fatal_crashes WHERE case_number = [12345];

#select all crimes and crashes that occur simultaneously before a time (military time)
SELECT crimes.time_of_crime as Time, crimes.incident_number, fatal_crashes.case_number
FROM crimes
JOIN fatal_crashes
WHERE crimes.time_of_crime = cast(fatal_crashes.time_of_crash as SIGNED)
GROUP BY time_of_crime
HAVING crimes.time_of_crime < [2400];

#count all motorcycle crashes that occured without a helmet
SELECT COUNT(m.helmet) FROM motorcycle m 
WHERE m.helmet != "helmet";

#count all crashes that occured on local streets
SELECT COUNT(f.road_type) FROM fatal_crashes f 
WHERE f.road_type = "Local Street";

#select all crimes and crashes that occur simultaneously after a time (military time)
SELECT crimes.time_of_crime as Time, crimes.incident_number, fatal_crashes.case_number
FROM crimes
JOIN fatal_crashes
WHERE crimes.time_of_crime = cast(fatal_crashes.time_of_crash as SIGNED)
GROUP BY time_of_crime
HAVING crimes.time_of_crime >= [0];

#select addresses where both a crime and a crash occurred
SELECT c.address, c.incident_number, f.case_number FROM crimes c
JOIN fatal_crashes f 
WHERE c.address = f.address
ORDER BY c.incident_number ASC;

#select all crimes that don't share an address with a crash
SELECT * FROM crimes C LEFT JOIN crimes_x_crashes X ON
C.incident_number = X.incident_number
ORDER BY C.incident_number ASC;

#get details of crimes in crimes_x_crashes
SELECT C.incident_number, C.time_of_crime, C.type_of_crime, C.address
FROM crimes C RIGHT JOIN crimes_x_crashes X ON
C.incident_number = X.incident_number
ORDER BY C.incident_number ASC;

#select all types of crimes
SELECT DISTINCT(type_of_crime) FROM crimes C
ORDER BY C.type_of_crime ASC;

#create views
DROP VIEW IF EXISTS Crash_Details;
CREATE VIEW Crash_Details AS
SELECT case_number, road_type, crash_type
FROM fatal_crashes;

DROP VIEW IF EXISTS Crime_Details;
CREATE VIEW Crime_Details AS
SELECT incident_number, time_of_crime, type_of_crime
FROM crimes;

#view queries

#count possesions of marijuana
SELECT COUNT(*) FROM crime_details c
WHERE c.type_of_crime = "POSS MARIJUANA";

#find all the unfortunate souls who picked the wrong time to smoke
SELECT * FROM crime_details c
WHERE c.time_of_crime = 1620;

#view all the people who committed suicide before 9:00
SELECT * FROM crime_details c
WHERE c.type_of_crime = "SUICIDE" and c.time_of_crime < 900;

#find all non-highway crashes
SELECT * from crash_details
WHERE road_type != "IH35" AND road_type != "Other highway";

#find all pedestrian fatalities
SELECT * from crash_details
WHERE crash_type = "Pedestrian";
