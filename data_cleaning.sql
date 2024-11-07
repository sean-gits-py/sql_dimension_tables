-- Code sections for cleaning data in SQL

-- Replace null values with a default value or remove them
SELECT COALESCE(column_name,'value_here') FROM TABLE_ABC


-- Find and delete duplicate rows based on key columns
WITH CTE AS (
  SELECT id,
  columnA, columnB,
  ROW_NUMBER() OVER (PARTITION BY column1, column2 ORDER BY id) as row_num
  FROM TABLE_XYZ
)
DELETE FROM table_name
WHERE id NOT IN (
    SELECT MIN(id)
    FROM table_name
    GROUP BY key_column
);

--Convert text to consistent case
SELECT UPPER(column_name) FROM table_name;  -- for uppercase
SELECT LOWER(column_name) FROM table_name;  -- for lowercase


-- Delete extra spaces
SELECT TRIM(column_name) FROM table_name;


--Convert Date Strings
SELECT TO_DATE(date_column, 'YYYY-MM-DD') FROM table_name;
SELECT STR_TO_DATE(column_name, '%m%d%Y') FROM table_name;


--Find and manage outliers in data: Use statistical functions like AVG, STDDEV, etc., to identify and handle outliers.
SELECT * FROM table_name WHERE column_name BETWEEN lower_limit AND upper_limit;

--Remove special characters
SELECT REGEXP_REPLACE(column_name, '[^a-zA-Z0-9]', '') FROM table_name;

--Standardize categorical values
UPDATE table_name
SET column_name = 'standard_value'
WHERE column_name IN ('value1', 'value2');


--Fill missing numerical values
UPDATE table_name
SET column_name = (SELECT AVG(column_name) FROM table_name)
WHERE column_name IS NULL;
