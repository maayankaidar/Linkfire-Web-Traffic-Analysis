-- Creating a view after the data cleaning process and adding indexing for rows
CREATE VIEW clean_traffic AS
WITH deduplicated AS (
    SELECT DISTINCT
        event, 
        date, 
        country, 
        city, 
        artist, 
        album, 
        track,
        linkid
    FROM 
        traffic
    WHERE
        country IS NOT NULL 
        AND city IS NOT NULL 
        AND artist IS NOT NULL 
        AND album IS NOT NULL 
        AND track IS NOT NULL
)
SELECT 
    ROW_NUMBER() OVER (ORDER BY event, date, country, city, artist, album, track) AS id,
    event, 
    date, 
    country, 
    city, 
    artist, 
    album, 
    track,
    linkid
FROM deduplicated;
