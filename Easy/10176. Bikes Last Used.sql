/*
Find the last time each bike was in use.
Output both the bike number and the date-timestamp of the bike's last use (i.e., the date-time the bike was returned).
Order the results by bikes that were most recently used.
*/

SELECT DISTINCT bike_number, MAX(end_time) as last_used
FROM dc_bikeshare_q1_2012
GROUP BY bike_number
ORDER BY last_used DESC


Recommended Solution

SELECT bike_number, MAX(end_time) as bike_last_use
FROM dc_bikeshare_q1_2012
GROUP BY bike_number
ORDER BY end_time DESC;
