-- This query shows a list of the daily top Google Search terms.
SELECT
   refresh_date AS Day,
   term AS Top_Term,
   country_name AS country,
   week AS W,
       -- These search terms are in the top 25 in the US each day.
   rank,
FROM `bigquery-public-data.google_trends.international_top_terms`
WHERE
   rank <=3
       -- Choose only the top term each day.
   AND refresh_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 4 WEEK)
   AND country_name='Egypt'
       
GROUP BY Day, Top_Term, rank ,country, week
ORDER BY Day DESC
   -- Show the days in reverse chronological order.