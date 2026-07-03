# Write your MySQL query statement below
    --self join--
SELECT today.id
FROM Weather AS today
JOIN Weather AS yesterday
ON DATEDIFF(today.recordDate, yesterday.recordDate) = 1
WHERE today.temperature > yesterday.temperature;
   
#2nd method
         --window function--
SELECT id
FROM
(
    SELECT
        id,
        temperature,
        recordDate,
        LAG(temperature) OVER (ORDER BY recordDate) AS prev_temp,
        LAG(recordDate) OVER (ORDER BY recordDate) AS prev_date
    FROM Weather
) t
WHERE DATEDIFF(recordDate, prev_date) = 1
AND temperature > prev_temp;
