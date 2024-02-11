SELECT * FROM uscollege.institution;

/* Query 1 */
SELECT Name,City,Zip,Address
FROM uscollege.institution
LIMIT 60;

/* Query 2 */
SELECT Name,Tuition_Fees
FROM uscollege.institution
ORDER BY Tuition_Fees DESC
LIMIT 10;

/* Query 3 */
SELECT ACCREDAGENCY,COUNT(ACCREDAGENCY) AS College_Count
FROM uscollege.institution
GROUP BY ACCREDAGENCY
ORDER BY College_Count DESC
LIMIT 10;

/* Query 4 */
SELECT Name,Admission_Rate
FROM uscollege.institution
ORDER BY Admission_Rate DESC
LIMIT 10;

/* Query 5 */
SELECT School_Type, COUNT(School_Type) AS College_Count
FROM uscollege.institution
WHERE School_Type IS NOT NULL
GROUP BY School_Type
ORDER BY College_Count DESC;

/* Query 6 */
SELECT ROUND(AVG(Avg_Female_Debt),2) AS Avg_Female_Debt,ROUND(AVG(Avg_Male_Debt),2) AS Avg_Male_Debt
FROM uscollege.institution
ORDER BY Avg_Male_Debt DESC;

/* Query 7 */
SELECT City, COUNT(Name) AS College_Count
FROM uscollege.institution
GROUP BY City
ORDER BY College_Count DESC
LIMIT 8; 