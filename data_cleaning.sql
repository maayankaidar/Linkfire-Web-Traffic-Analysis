-- Missing Values
SELECT
	*
FROM
	traffic
WHERE
	event IS NULL 
	OR date IS NULL 
	OR country IS NULL 
	OR city IS NULL 
	OR artist IS NULL 
	OR album IS NULL 
	OR track IS NULL 
	OR isrc IS NULL 
	OR linkid IS NULL 
/*
 * total rows - 226278
 * total contain null rows - 7129
 * total country is null - 11 -> 0.005%
 * total city is null - 11 -> 0.005%
 * total artist is null - 37 -> 0.016%
 * total album is null - 5 -> 0.002%
 * total track is null - 5 -> 0.002%
 * total isrc is null - 7121 -> doesn't affect the analysis so we won't handle it.
 * 
 * The proportions are extremely low.
 * Missing data at these levels typically won't have a significant impact on the analysis.
 * So we would filter it out in the data cleaning.
*/
	
-- Duplicated Data
SELECT
	COUNT(*)
FROM (
    SELECT 
		event, date, country, city, artist, album, track, isrc, linkid, COUNT(*)
	FROM
		traffic
	GROUP BY
		event, date, country, city, artist, album, track, isrc, linkid
	HAVING COUNT(*) > 1
) AS subquery
/*
 * There are 28138 rows duplicated
 */

-- Typos
SELECT DISTINCT 
	event
FROM 
	traffic
	
SELECT DISTINCT 
	date
FROM 
	traffic
	
SELECT DISTINCT 
	date
FROM 
	traffic
	
SELECT  
	country, COUNT(*)
FROM 
	traffic
GROUP BY 
	country
ORDER BY 
	COUNT(*) ASC
	
SELECT  
	city, COUNT(*)
FROM 
	traffic
GROUP BY 
	city
ORDER BY 
	COUNT(*) ASC
	
SELECT  
	artist, COUNT(*)
FROM 
	traffic
GROUP BY 
	artist
ORDER BY 
	COUNT(*) ASC
	
SELECT  
	album, COUNT(*)
FROM 
	traffic
GROUP BY 
	album
ORDER BY 
	COUNT(*) ASC
	
SELECT  
	track , COUNT(*)
FROM 
	traffic
GROUP BY 
	track 
ORDER BY 
	COUNT(*) DESC
/*
 * No identified typos.
 */
	
	
	
