CREATE DATABASE AI_adoption;
USE ai_adoption;

CREATE TABLE df1 (
	Job_Title VARCHAR(245),
    `AI Impact` float,
    Tasks INT,
    `AI models` INT,
    AI_Workload_Ratio FLOAT,
    Domain VARCHAR(245),
    Job_Title_2 VARCHAR(245));

CREATE TABLE df2 (
Job_Title VARCHAR(245),
Industry VARCHAR(245),
Company_Size VARCHAR(245),
Location VARCHAR(245),
AI_Adoption_Level VARCHAR(245),
Automation_Risk VARCHAR(45),
Required_Skills VARCHAR(245),
Salary_USD FLOAT,
Remote_Friendly VARCHAR(45),
Job_Growth_Projection VARCHAR(245));

CREATE TABLE df3 (
Job_Title VARCHAR(245),
Industry VARCHAR(245),
Company_Size VARCHAR(245),
Location VARCHAR(245),
AI_Adoption_Level VARCHAR(245),
Automation_Risk VARCHAR(45),
Required_Skills VARCHAR(245),
Salary_USD FLOAT,
Remote_Friendly VARCHAR(45),
Job_Growth_Projection VARCHAR(245));

SELECT *
FROM ai_adoption.df2;

SELECT *
FROM ai_adoption.df3;

SELECT *
FROM ai_adoption.df1;

CREATE TABLE df2_df3_joined AS (SELECT *
FROM ai_adoption.df2
UNION
SELECT *
FROM ai_adoption.df3);

CREATE TABLE df1_df2_joined AS 
SELECT df2.*, df1.`AI Impact`, df1.Tasks, df1.`AI models`, df1.AI_Workload_Ratio, df1.Domain
FROM df2
LEFT JOIN df1
ON df2.Job_Title = df1.Job_Title;

CREATE TABLE df1_df2_joined_cleaned
SELECT *
FROM df1_df2_joined
WHERE `AI Impact` IS NOT NULL;

SELECT *
FROM df1_df2_joined_cleaned;





