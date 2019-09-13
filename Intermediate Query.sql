SELECT * FROM tutorial.aapl_historical_stock_price

SELECT COUNT(*)
  FROM tutorial.aapl_historical_stock_price
  
  SELECT * FROM tutorial.aapl_historical_stock_price
  
  SELECT COUNT(high)
  FROM tutorial.aapl_historical_stock_price
  
  SELECT COUNT(low)
  FROM tutorial.aapl_historical_stock_price
  
  SELECT COUNT(*)
  FROM tutorial.aapl_historical_stock_price
  
--Write a query to calculate the average opening price 

SELECT (SUM(open)/COUNT(open)) AS avg_stock_price
FROM tutorial.aapl_historical_stock_price

SELECT MIN(volume) AS min_volume,
      MAX(volume) AS max_volume
  FROM tutorial.aapl_historical_stock_price
  
--What was Apple's lowest stock price (at the time of this data collection)?

SELECT MIN(low) as lowest_stock
FROM tutorial.aapl_historical_stock_price

-- What was the highest single-day increase in Apple's share value?

SELECT MAX (close - open)
FROM tutorial.aapl_historical_stock_price

SELECT AVG(high)
  FROM tutorial.aapl_historical_stock_price
WHERE high IS NOT NULL

-- Write a query that calculates the average daily trade volume for Apple stock.
SELECT AVG(volume)
FROM tutorial.aapl_historical_stock_price

-- Calculate the total number of shares traded each month. Order your results chronologically.
 SELECT year,
       month,
       SUM(volume) AS volume_sum
FROM tutorial.aapl_historical_stock_price
GROUP BY year, month
ORDER BY year ASC, month ASC

-- Write a query to calculate the average daily price change in Apple stock, grouped by year.
SELECT year,
     AVG(close-open) AS price_change_avg
FROM tutorial.aapl_historical_stock_price
GROUP BY year
ORDER BY 1

-- Write a query that calculates the lowest and highest prices that Apple stock achieved each month.

SELECT year,
      month,
      MAX(high) as max_high,
      MIN(low) as min_low
FROM tutorial.aapl_historical_stock_price
GROUP BY 1,2 
ORDER BY 1,2 

SELECT year,
      month,
      MAX(high) AS month_high
  FROM tutorial.aapl_historical_stock_price
GROUP BY year, month
HAVING MAX(high) > 400
ORDER BY year, month

SELECT DISTINCT month
  FROM tutorial.aapl_historical_stock_price

SELECT DISTINCT year, month
  FROM tutorial.aapl_historical_stock_price

-- -- Write a query that returns the unique values in the year column, in chronological order.
SELECT DISTINCT year
FROM tutorial.aapl_historical_stock_price
ORDER BY year ASC

SELECT COUNT(DISTINCT month) AS unique_months
  FROM tutorial.aapl_historical_stock_price

SELECT month,
      AVG(volume) AS avg_trade_volume
  FROM tutorial.aapl_historical_stock_price
GROUP BY month
ORDER BY 2 DESC

-- Write a query that counts the number of unique values in the month column for each year.

SELECT COUNT(DISTINCT month) AS unique_months,
      year
FROM tutorial.aapl_historical_stock_price
GROUP BY year

/* Write a query that separately counts the number of unique values 
in the month column and the number of unique values in the `year` column.*/

SELECT COUNT(DISTINCT month) AS unique_month,
      COUNT(DISTINCT year) AS unique_year
FROM tutorial.aapl_historical_stock_price


