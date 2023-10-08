-- Dataframe 1
-- Select the sales method col and the count of the sales method col
SELECT sales_method, COUNT(sales_method)
-- Query a CSV file
FROM 'store.csv'
-- Group by the sales method col
GROUP BY sales_method
-- Order by the count of the sales method col in DESC ORDER
ORDER BY COUNT(sales_method) DESC;

-- Dataframe 2
-- Select the state col and the count of the sales col label as Sales
SELECT state, COUNT(sales) AS Sales
-- Query a CSV file
FROM 'store.csv'
-- Only get where the sales method col IS equal to the Email
WHERE sales_method = 'Email'
-- Group by state col
GROUP BY state
-- Order by Sales col in DESC ORDER
ORDER BY Sales DESC;

-- Dataframe 3
-- Select the sales method col, get the min, 25% percentile, average, median, standard deviation, 
-- variance, 75% percentile, and the max of the revenue col 
SELECT sales_method, ROUND(MIN(revenue), 2) AS MIN, 
ROUND(PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY revenue), 2) AS Q1,ROUND(AVG(revenue), 2) AS AVG, 
ROUND(PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY revenue), 2) AS MEDIAN, 
ROUND(STDDEV(revenue), 2) AS SD, 
ROUND(VARIANCE(revenue), 2) AS VAR,
ROUND(PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY revenue), 2) AS Q3, ROUND(MAX(revenue), 2) AS MAX
-- Query a CSV file
FROM 'store.csv'
-- Group by the sales method col 
GROUP BY sales_method;

-- Dataframe 4
-- Select the state col, get the min, 25% percentile, average, median, standard deviation, 
-- variance, 75% percentile, and the max of the revenue col 
SELECT state, ROUND(MIN(revenue), 2) AS MIN, 
ROUND(PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY revenue), 2) AS Q1,ROUND(AVG(revenue), 2) AS AVG, 
ROUND(PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY revenue), 2) AS MEDIAN, 
ROUND(STDDEV(revenue), 2) AS SD, 
ROUND(VARIANCE(revenue), 2) AS VAR,
ROUND(PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY revenue), 2) AS Q3, ROUND(MAX(revenue), 2) AS MAX
-- Query a CSV file
FROM 'store.csv'
-- Only get where the sales method col IS equal to the Email
WHERE sales_method = 'Email + Call'
-- Group by the sales method col
GROUP BY state
-- Order by max revenue
ORDER BY MAX(revenue) DESC;

-- Dataframe 5
-- Select the repeat purchase col and the count of the repeat purchase col
SELECT repeat_purchase, COUNT(repeat_purchase)
-- Query a CSV file
FROM 'store.csv'
-- Group by the repeat purchase col
GROUP BY repeat_purchase;

-- Dataframe 6
-- Select the repeat purchase col, get the min, 25% percentile, average, median, standard deviation, 
-- variance, 75% percentile, and the max of the sales col 
SELECT repeat_purchase, ROUND(MIN(sales), 2) AS MIN, 
ROUND(PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY sales), 2) AS Q1, ROUND(AVG(sales), 2) AS AVG, 
ROUND(PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY sales), 2) AS MEDIAN, 
ROUND(STDDEV(sales), 2) AS SD, 
ROUND(VARIANCE(sales), 2) AS VAR,
ROUND(PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY sales), 2) AS Q3, ROUND(MAX(sales), 2) AS MAX
-- Query a CSV file
FROM 'store.csv'
-- Group by the repeat purchase col
GROUP BY repeat_purchase;

-- Dataframe 7
-- Select the count of sales col, get the min, 25% percentile, average, median, standard deviation, 
-- variance, 75% percentile, and the max of the sales col 
SELECT COUNT(sales) AS Sales, ROUND(MIN(sales), 2) AS MIN, 
ROUND(PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY sales), 2) AS Q1, ROUND(AVG(sales), 2) AS AVG, 
ROUND(PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY sales), 2) AS MEDIAN, 
ROUND(STDDEV(sales), 2) AS SD, 
ROUND(VARIANCE(sales), 2) AS VAR,
ROUND(PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY sales), 2) AS Q3, ROUND(MAX(sales), 2) AS MAX
-- Query a CSV file
FROM 'store.csv'

-- Dataframe 8
-- Select the count of revenue col, get the min, 25% percentile, average, median, standard deviation, 
-- variance, 75% percentile, and the max of the revenue col 
SELECT COUNT(revenue) AS Revenue, ROUND(MIN(revenue), 2) AS MIN, 
ROUND(PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY revenue), 2) AS Q1, 
ROUND(AVG(revenue), 2) AS AVG, 
ROUND(PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY revenue), 2) AS MEDIAN, 
ROUND(STDDEV(revenue), 2) AS SD, 
ROUND(VARIANCE(revenue), 2) AS VAR,
ROUND(PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY revenue), 2) AS Q3, ROUND(MAX(revenue), 2) AS MAX
-- Query a CSV file
FROM 'store.csv'