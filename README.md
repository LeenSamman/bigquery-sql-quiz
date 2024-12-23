# bigquery-sql-quiz
Cloud_Computing Quiz
-----------------------
There is 2 files in this repo:
ScreenShots : to visualize the code snippets results 
SQL-code : contains the sql code
ScreenShots22 : is same as ScreenShots but is a word file will open if you press view raw (if the pdf file did not open)





-----------------------

The Repository aims to answer this Quiz
This quiz is based on the following base query. Your task is to make specific modifications to the 
query to practice SQL skills in GCP BigQuery. 
Base Code 
sql 
Copy code -- This query shows a list of the daily top Google Search terms. 
SELECT 
refresh_date AS Day, 
term AS Top_Term, 
rank 
FROM `bigquery-public-data.google_trends.top_terms` 
WHERE 
rank = 1 -- Choose only the top term each day. 
AND refresh_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 2 WEEK) -- Filter to the last 2 weeks. 
GROUP BY Day, Top_Term, rank 
ORDER BY Day DESC -- Show the days in reverse chronological order. 
Quiz Tasks 
1. Change the Duration 
• Modify the query to analyze data for the last month instead of the last two weeks. 
2. Modify the Rank Filter 
• Change the query to include search terms ranked in the top 3 instead of just rank 1. 
3. Add Region Filtering 
• Modify the query to filter search terms specific to the UK region (if regional data is 
available). 
4. Use a JOIN 
• Join the query with another table (e.g., term_categories) to include the category of 
each search term. 
5. Add Weekly Aggregation 
Task: 
• Modify the query to group terms by the week they appeared as top terms. 
Submission Instructions 
Write and execute the modified queries for each task. Submit: 
1. The SQL code you wrote for each task. 
2. Screenshots of the query results. 
3. A brief explanation of the changes you made and how they impacted the output. 
Task Instructions 
Create a GitHub Repository 
o Create a new public repository on GitHub named bigquery-sql-quiz. 
o Add a descriptive README file that explains the purpose of the repository. 
o Add .sql file extension. 
o Attach the result. 
