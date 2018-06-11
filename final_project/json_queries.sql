#order all tweets by date created
SELECT created_at, tweet, type_of_crime FROM tweets ORDER BY created_at ASC;

#find frequencies of screen name in tweets
SELECT screen_name, COUNT(*) AS `num` FROM tweets GROUP BY screen_name ASC;

#find frequencies of crime types in tweets
SELECT type_of_crime, COUNT(*) AS `num` FROM tweets GROUP BY type_of_crime ASC;

#select all crimes and tweets with matching type_of_crime field
SELECT crimes.type_of_crime, crimes.incident_number, tweets.tweet_id
FROM crimes JOIN tweets
ON crimes.type_of_crime = tweets.type_of_crime
ORDER BY crimes.type_of_crime ASC;

#select all crimes and tweets with matching type_of_crime field, where the crimes are also in the junction table
SELECT crimes.type_of_crime, crimes.incident_number, tweets.tweet_id
FROM crimes JOIN crimes_x_crashes
ON crimes_x_crashes.incident_number = crimes.incident_number
JOIN tweets
ON crimes.type_of_crime = tweets.type_of_crime
ORDER BY crimes.incident_number ASC;