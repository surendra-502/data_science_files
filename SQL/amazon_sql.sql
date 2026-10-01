CREATE DATABASE amazon_data_DB;
USE amazon_data_DB;
show databases;
select * from amazon;
select * from amazon_sales;
drop table amazon_sales;
select count(*) from
amazon;

SELECT count(*) AS TOTAL_RECORDS,
SUM(TotalAmount) AS TOTAL_AMOUNT,
avg(TotalAmount) AS AVGTOTAL_AMOUNT,
SUM(Quantity) AS TOTAL_QUANTITY,
MIN(TotalAmount) as MIN_TOTALAMOUNT,
MAX(TotalAmount) as MAX_TOTALAMOUNT
FROM amazon;

#CATEGORY ANALYSIS

SELECT 
CATEGORY,
COUNT(*) AS TOTAL_ORDERS,
SUM(TOTALAMOUNT) AS TOTAL_AMOUNT,
SUM(QUANTITY) AS TOTAL_QUANTITY
FROM AMAZON
GROUP BY CATEGORY
ORDER BY TOTAL_AMOUNT DESC;

#BRAND ANALYSIS
SELECT
BRAND,
COUNT(*) AS TOTAL_ORDERS,
SUM(TOTALAMOUNT) AS TOTAL_AMOUNT,
SUM(QUANTITY) AS TOTAL_QUANTITY
FROM AMAZON
GROUP BY BRAND
ORDER BY TOTAL_AMOUNT DESC;

#orderstatus analisis

select orderstatus,count(*) as number_of_orders
from amazon
group by OrderStatus
order by number_of_orders desc;

#paymentmethod analysis
SELECT PAYMENTMETHOD,
count(*) AS NUMBER_OF_ORDERS,
SUM(TOTALAMOUNT) AS TOTAL_SALES
FROM amazon
GROUP BY PaymentMethod
ORDER BY TOTAL_SALES DESC;

#COUNTRY ANALYSIS
SELECT
    Country,
    COUNT(*) AS Number_of_Orders,
    ROUND(SUM(TotalAmount),3)AS Total_Sales
FROM amazon
GROUP BY Country
ORDER BY Total_Sales DESC;

#COUNTRY AND STATE ANALYSIS
SELECT
    Country,STATE,
    COUNT(*) AS Number_of_Orders,
    ROUND(SUM(TotalAmount),3)AS Total_Sales
FROM amazon
GROUP BY Country,STATE
ORDER BY Total_Sales DESC;




