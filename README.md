# **SLEEP HEALTH AND LIFESTYLE DATA EXPLORATION WITH SQL**

## **Data Understanding**
The dataset is [Sleep Health and Lifestyle](https://www.kaggle.com/datasets/uom190346a/sleep-health-and-lifestyle-dataset/data) which comprises 374 rows and 13 columns:
- personID: a person identifier
- gender: male or female
- age (years) : age of the person
- occupation: occupation or profession of the person
- sleep_duration (hours): number of hours people sleep per day
- quality_sleep: level or rating subjective of sleep, ranging from 1 to 10. The higher number means better quality.
- physical_act_level (minutes/day) : number of minutes physical activity of person daily.
- stress_level: level or rating subjective of stress, ranging from 1 to 10.
- bmi: BMI category of the person (Normal, Obese, Overweight, Normal Weight)
- blood_pressure (systolic/diastolic) : the blood pressure measure from the person
- heart_rate (bpm) : the resting heart rate of the people in beats per minute.
- daily_step: number of steps people taken per day
- sleep_disorder: the presence or absent of sleeping disorder (None, Insomnia, Sleep Apnea).

## **Data Exploration**
1. Which occupation have highest average quality of sleep?
```sql
SELECT occupation, AVG(quality_sleep) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(quality_sleep) DESC;
```

2. Which occupation have longest sleep duration?
```sql
SELECT occupation, AVG(sleep_duration) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(sleep_duration) DESC;
```

3. Which occupation have lowest stress level?
```sql
SELECT occupation, AVG(stress_level) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(stress_level) ASC;
```

4. Which occupation have most average daily steps?
```sql
SELECT occupation, AVG(daily_step) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(daily_step) DESC;
```

5. Which occupation have higher average physical action level?
```sql
SELECT occupation, AVG(physical_act_level) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(physical_act_level) DESC;
```

6. How many females and males from table?
```sql
SELECT gender, COUNT(*) AS total
FROM sleep_habit
GROUP BY gender;
```

7. Which gender have longest average sleep duration?
```sql
SELECT gender, AVG(sleep_duration) FROM sleep_habit
GROUP BY gender
ORDER BY AVG(sleep_duration) DESC;
```

8. Which gender have good quality of sleep based on average?
```sql
SELECT gender, AVG(quality_sleep) FROM sleep_habit
GROUP BY gender
ORDER BY AVG(quality_sleep) DESC;
```

9. Which gender most stress out by average?
```sql
SELECT gender, AVG(stress_level) FROM sleep_habit
GROUP BY gender
ORDER BY AVG(stress_level) DESC;
```

10. How much people suffering from sleep_disorder?
```sql
SELECT sleep_disorder, COUNT(*) AS total
FROM sleep_habit
GROUP BY sleep_disorder;
```

11. How much people that are obese and overweight suffering from sleep_disorder?
```sql
WITH obese_and_over AS (
SELECT * FROM sleep_habit
WHERE bmi = 'obese' OR bmi='overweight'
)
SELECT sleep_disorder, COUNT(*) FROM obese_and_over
GROUP BY sleep_disorder;
```

12. which age have highest average stress level?
```sql
SELECT age, AVG(stress_level) FROM sleep_habit
GROUP BY age
ORDER BY AVG(stress_level) DESC
LIMIT 10;
```

