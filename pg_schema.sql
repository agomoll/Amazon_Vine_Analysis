--DROP TABLE review_id_table;
--DROP TABLE products_table;
--DROP TABLE customers_table;
--DROP TABLE vine_table;



CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products_table (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers_table (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

SELECT count(*) FROM review_id_table;
SELECT count(*) FROM products_table;
SELECT count(*) FROM customers_table;
SELECT count(*) FROM vine_table;

SELECT * FROM review_id_table
LIMIT 5;
SELECT * FROM products_table
LIMIT 25;
SELECT * FROM customers_table
LIMIT 25;
SELECT * FROM vine_table
LIMIT 5;