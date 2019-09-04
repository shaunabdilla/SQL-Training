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
