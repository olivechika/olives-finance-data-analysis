SELECT * 
FROM new_schema.finance_data4;

#REMOVING NULL VALUES
SELECT * 
FROM new_schema.finance_data4
WHERE Savings IS NOT NULL;

#RENAMING SAVINGS COLUMN TO SAVINGS_OBJECTIVES

ALTER TABLE new_schema.finance_data4
CHANGE COLUMN Savings Savings_objectives VARCHAR(25);

#QUESTION 1: ARE MORE YOUNG PEOPLE INTO INVESTMENT 
#CREATE NEW COLUMN AGE_RANGE
ALTER TABLE new_schema.finance_data3 ADD COLUMN age_range varchar(255);

UPDATE new_schema.finance_data2 SET age_range = 
CASE 
    WHEN age >= 26 AND age <= 40 THEN 'Middle_Age'
    WHEN age > 18 AND age <= 25 THEN 'Young'
    ELSE 'unknown'
END;


SELECT age_range, COUNT(*) AS age_range_count
FROM new_schema.finance_data4
GROUP BY age_range;

#HOW MANY HAVE INVESTMENT IN THE STOCK MARKET?
SELECT Stock_Marktet, COUNT(*) AS Stock_Marktet_COUNT
FROM new_schema.finance_data4
GROUP BY Stock_Marktet;

#What investment object attracts more people and why?
SELECT Objective, COUNT(*) AS Objective_count
FROM new_schema.finance_data4
GROUP BY Objective;

#What gender has adopted investment as a source of income
SELECT gender, COUNT(*) AS Gender_count
FROM new_schema.finance_data4
GROUP BY gender;

#How many people invest in the investment avenue 
SELECT Investment_Avenues, COUNT(*) AS Num_of_Investment_Avenues
FROM new_schema.finance_data4
WHERE Investment_Avenues="Yes";

#.What do you think are the best options for investing your money(in order of preference(mutual funds or gold (total number of Gold investors and total number of mutual investors) 

SELECT SUM(Mutual_Funds) Mutual_Funds_Sum_total, SUM(Gold)Gold_Sum_total
FROM new_schema.finance_data4;

#what factor do people consider more before making investments  investment 

SELECT Factor, COUNT(*) AS Factor_count
FROM new_schema.finance_data4
GROUP BY Factor;

#What savings objectives do people consider before investing 
SELECT  Savings_objectives, COUNT(*) AS Savings_objectives_count
FROM new_schema.finance_data4
GROUP BY Savings_objectives;

#What are the purpose behind investment
SELECT  Purpose, COUNT(*) AS Purpose_count
FROM new_schema.finance_data4
GROUP BY Purpose;



#How long do people prefer to keep there money in investment plans 
SELECT  Duration, COUNT(*) AS Duration_count
FROM new_schema.finance_data4
GROUP BY Duration;

#How often do people monitor there investments 
SELECT  Invest_Monitor, COUNT(*) AS Invest_Monitor_count
FROM new_schema.finance_data4
GROUP BY Invest_Monitor;
#How much return do people  expect from any investment instrument?
SELECT  Expect, COUNT(*) AS Expect_count
FROM new_schema.finance_data4
GROUP BY Expect;

#Which investment  avenue do people  mostly invest in?
SELECT  Avenue, COUNT(*) AS Avenue_count
FROM new_schema.finance_data4
GROUP BY Avenue;


#Reasons people invest in equity market

SELECT  Reason_Equity, COUNT(*) AS Reason_Equity_count
FROM new_schema.finance_data4
GROUP BY Reason_Equity;

#Reasons people invest in Reason_Mutual

SELECT  Reason_Mutual, COUNT(*) AS Reason_Mutual_count
FROM new_schema.finance_data4
GROUP BY Reason_Mutual;

#Reasons people invest in Government Bonds

SELECT Reason_Bonds, COUNT(*) AS Reason_Bonds_count
FROM new_schema.finance_data4
GROUP BY Reason_Bonds;

#Reasons people invest in fixed deposit

SELECT Reason_FD, COUNT(*) AS Reason_FD_count
FROM new_schema.finance_data4
GROUP BY Reason_FD;

#
