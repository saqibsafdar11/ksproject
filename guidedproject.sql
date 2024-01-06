--Find more information of the tables of the database using the following command:
PRAGMA table_info(ksprojects);

-- Pull the relevant columns from the ksprojects table that will allow us to assess a project's result based on its main category, amount of money set as a goal, number of backers, and amount of money pledged. Return just the first 10 rows.

SELECT 
main_category, goal, backers, pledged FROM ksprojects LIMIT 10;

-- Repeat query, but this time we will only keep the records where the project state is either 'failed', 'canceled', or 'suspended'.


SELECT
main_category, goal, backers, pledged 
FROM ksprojects 
WHERE state IN ('failed', 'cancelled', 'suspended')
LIMIT 10;

--Expand the query to find which of these projects had at least 100 backers and at least $20,000 pledged.

SELECT main_category, backers, pledged, goal
  FROM ksprojects
 WHERE state IN ('failed', 'canceled', 'suspended')
   AND backers >= 100 AND pledged >= 20000
 LIMIT 10;

-- view projects by categories, along with the percentage of the goal that was funded.

SELECT main_category, goal, backers, pledged, pledged/goal AS pct_pledged 
FROM ksprojects
WHERE state IN ('failed')
AND  backers >= 100 AND pledged >= 20000;


SELECT main_category, backers, pledged, goal, 
       pledged/goal AS pct_pledged,
       CASE
       WHEN pledged/goal  >= 1 THEN "Fully funded"
       WHEN pledged/goal BETWEEN .75 AND 1 THEN "Nearly funded"
       ELSE "Not nearly funded"
       END AS funding_status 
  FROM ksprojects
 WHERE state IN ('failed')
       AND backers >= 100 AND pledged >= 20000
 ORDER BY main_category, pct_pledged DESC
 LIMIT 10;


-- view projects by categories, along with the percentage of the goal that was funded.



