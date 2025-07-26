/*197. Rising Temperature
Table: Weather
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.

Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order.

CODE:*/

# Write your MySQL query statement below
SELECT w.id Id FROM Weather w 
JOIN Weather we ON DATEDIFF(w.recordDate , we.recordDate) = 1
WHERE w.temperature > we.temperature;
