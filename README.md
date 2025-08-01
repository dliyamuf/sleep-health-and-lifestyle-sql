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
![question1](https://github.com/dliyamuf/sleep-health-and-lifestyle-sql/blob/main/images/question1.png)


2. Which occupation have longest sleep duration?
```sql
SELECT occupation, AVG(sleep_duration) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(sleep_duration) DESC;
```
![question1](https://github.com/dliyamuf/sleep-health-and-lifestyle-sql/blob/main/images/question2.png)

3. Which occupation have lowest stress level?
```sql
SELECT occupation, AVG(stress_level) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(stress_level) ASC;
```
![question1](https://github.com/dliyamuf/sleep-health-and-lifestyle-sql/blob/main/images/question3.png)

4. Which occupation have most average daily steps?
```sql
SELECT occupation, AVG(daily_step) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(daily_step) DESC;
```
![question1](https://github.com/dliyamuf/sleep-health-and-lifestyle-sql/blob/main/images/question4.png)

5. Which occupation have higher average physical action level?
```sql
SELECT occupation, AVG(physical_act_level) FROM sleep_habit
GROUP BY occupation
ORDER BY AVG(physical_act_level) DESC;
```
![question1](https://github.com/dliyamuf/sleep-health-and-lifestyle-sql/blob/main/images/question5.png)

6. How many females and males from table?
```sql
SELECT gender, COUNT(*) AS total
FROM sleep_habit
GROUP BY gender;
```
![question1](https://github.com/dliyamuf/sleep-health-and-lifestyle-sql/blob/main/images/question6.png)

7. Which gender have longest average sleep duration?
```sql
SELECT gender, AVG(sleep_duration) FROM sleep_habit
GROUP BY gender
ORDER BY AVG(sleep_duration) DESC;
```
![question1](https://github.com/dliyamuf/sleep-health-and-lifestyle-sql/blob/main/images/question7.png)

8. Which gender have good quality of sleep based on average?
```sql
SELECT gender, AVG(quality_sleep) FROM sleep_habit
GROUP BY gender
ORDER BY AVG(quality_sleep) DESC;
```
![question1](https://github.com/dliyamuf/sleep-health-and-lifestyle-sql/blob/main/images/question8.png)

9. Which gender most stress out by average?
```sql
SELECT gender, AVG(stress_level) FROM sleep_habit
GROUP BY gender
ORDER BY AVG(stress_level) DESC;
```
![question1](https://github.com/dliyamuf/sleep-health-and-lifestyle-sql/blob/main/images/question9.png)

10. How much people suffering from sleep_disorder?
```sql
SELECT sleep_disorder, COUNT(*) AS total
FROM sleep_habit
GROUP BY sleep_disorder;
```
![question1](https://github.com/dliyamuf/sleep-health-and-lifestyle-sql/blob/main/images/question10.png)

11. How much people that are obese and overweight suffering from sleep_disorder?
```sql
WITH obese_and_over AS (
SELECT * FROM sleep_habit
WHERE bmi = 'obese' OR bmi='overweight'
)
SELECT sleep_disorder, COUNT(*) FROM obese_and_over
GROUP BY sleep_disorder;
```
![question1](https://github.com/dliyamuf/sleep-health-and-lifestyle-sql/blob/main/images/question11.png)

12. which age have highest average stress level?
```sql
SELECT age, AVG(stress_level) FROM sleep_habit
GROUP BY age
ORDER BY AVG(stress_level) DESC
LIMIT 10;
```
![question1](https://github.com/dliyamuf/sleep-health-and-lifestyle-sql/blob/main/images/question12.png)

## **INSIGHT**
- Engineers have the highest quality of sleep, averaging 8.4 hours of sleep with an average 3.9 stress level. Meanwhile, sales professionals have the lowest quality of sleep, averaging only 4 hours/day with a high average stress level of 8. 
- Nurses have the highest level of physical activities level and daily steps with a moderately good quality of sleep.
- Males have a shorter sleep duration than females, with higher stress level and lower sleep quality.
- 58.5% of people do not suffer from sleep disorders.
- 88% of individuals who are overweight or obese (based on BMI) experience sleep disorders (sleep apnea or insomnia).
- People aged 28 and 34 have the highest average stress level, rated 8.



