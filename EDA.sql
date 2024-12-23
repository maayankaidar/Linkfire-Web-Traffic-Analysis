-- Amount of each event
SELECT
	event,
	COUNT(*)
FROM 
	clean_traffic
GROUP BY
	event 
/*
 * click - 32489
 * pageview	- 73338
 * preview - 16707 
 */
	
-- Amount of traffic for each day
SELECT
	date,
	COUNT(*)
FROM
	clean_traffic
GROUP BY 
	date
/*
 * 2021-08-19 - 21143
 * 2021-08-20 - 18522
 * 2021-08-21 - 16701
 * 2021-08-22 - 16927
 * 2021-08-23 - 16412
 * 2021-08-24 - 16289
 * 2021-08-25 - 16540
 */
	
-- Less (but not least) commom artists
SELECT
	artist,
	COUNT(*)
FROM
	clean_traffic
GROUP BY
	artist
ORDER BY 
	COUNT(*) DESC 
LIMIT 100


--More details about each artist
SELECT
	artist,
	event,
	COUNT(*)
FROM
	clean_traffic
GROUP BY
	event,
	artist
ORDER BY 
	COUNT(*) DESC


    
--Total and average of events
SELECT 
	AVG(click_count) AS overall_average_click,
	AVG(preview_count) AS overall_average_preview,
	AVG(pageview_count) AS overall_average_pageview
FROM(
SELECT 
	date,
	COUNT(CASE WHEN event = 'preview' THEN 1 END) AS preview_count,
    COUNT(CASE WHEN event = 'click' THEN 1 END) AS click_count,
    COUNT(CASE WHEN event = 'pageview' THEN 1 END) AS pageview_count
FROM
	clean_traffic
GROUP BY
	date
) sub;

--Trending countries
SELECT
	country,
	COUNT(event)
FROM
	clean_traffic
GROUP BY 
	country
ORDER BY 
	COUNT(event) DESC
	
-- CTR Analysis
SELECT
    COUNT(*) AS total_events,
    linkid,
    COUNT(CASE WHEN event = 'preview' THEN 1 END) AS preview_count,
    COUNT(CASE WHEN event = 'click' THEN 1 END) AS click_count,
    COUNT(CASE WHEN event = 'pageview' THEN 1 END) AS pageview_count,
    (COUNT(CASE WHEN event = 'click' THEN 1 END) * 1.0 / 
     NULLIF(COUNT(CASE WHEN event = 'pageview' THEN 1 END), 0)) * 100 AS CTR
FROM
    clean_traffic
GROUP BY
    linkid
ORDER BY 
    total_events DESC

--Correlation between clicks and previews
SELECT
    linkid,
    COUNT(CASE WHEN event = 'preview' THEN 1 END) AS preview_count,
    COUNT(CASE WHEN event = 'click' THEN 1 END) AS click_count
FROM
    clean_traffic
GROUP BY 
    linkid






