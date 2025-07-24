-- which occupation have highest average quality of sleep?
SELECT occupation, AVG(quality_sleep) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(quality_sleep) DESC;

-- which occupation have longest sleep duration?
SELECT occupation, AVG(sleep_duration) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(sleep_duration) DESC;

-- which occupation have lowest stress level?
SELECT occupation, AVG(stress_level) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(stress_level) ASC;

-- which occupation have most average daily steps?
SELECT occupation, AVG(daily_step) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(daily_step) DESC;

-- which occupation have higher average physical action level?
SELECT occupation, AVG(physical_act_level) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(physical_act_level) DESC;

-- how many females and males from table?
SELECT gender, COUNT(*) AS total
FROM sleep_habit
GROUP BY gender;

-- which gender have longest average sleep duration?
SELECT gender, AVG(sleep_duration) FROM sleep_habit
GROUP BY gender
ORDER BY AVG(sleep_duration) DESC;

-- which gender have good quality of sleep based on average?
SELECT gender, AVG(quality_sleep) FROM sleep_habit
GROUP BY gender
ORDER BY AVG(quality_sleep) DESC;

-- which gender most stress out by average?
SELECT gender, AVG(stress_level) FROM sleep_habit
GROUP BY gender
ORDER BY AVG(stress_level) DESC;

-- how much people suffering from sleep_disorder?
SELECT sleep_disorder, COUNT(*) AS total
FROM sleep_habit
GROUP BY sleep_disorder;

-- how much people that are obese and overweight suffering from sleep_disorder?
WITH obese_and_over AS (
SELECT * FROM sleep_habit
WHERE bmi = 'obese' OR bmi='overweight'
)
SELECT sleep_disorder, COUNT(*) FROM obese_and_over
GROUP BY sleep_disorder;

-- what's average age of people
SELECT AVG(age) FROM sleep_habit;

-- which age have highest average stress level?
SELECT age, AVG(stress_level) FROM sleep_habit
GROUP BY age
ORDER BY AVG(stress_level) DESC;
