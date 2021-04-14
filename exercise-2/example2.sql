CREATE DATABASE IF NOT EXISTS app;

USE app;

CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  category VARCHAR(255)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS sales (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  amount INT
)  ENGINE=INNODB;

INSERT INTO products (name, category) VALUES ('apple', 'fruit');
INSERT INTO products (name, category) VALUES ('pear', 'fruit');
INSERT INTO products (name, category) VALUES ('fanta', 'drink');

INSERT INTO sales (product_id, amount) VALUES (1, 200);
INSERT INTO sales (product_id, amount) VALUES (2, 100);
INSERT INTO sales (product_id, amount) VALUES (2, 100);
INSERT INTO sales (product_id, amount) VALUES (3, 400);
INSERT INTO sales (product_id, amount) VALUES (3, 100);
INSERT INTO sales (product_id, amount) VALUES (2, 50);
INSERT INTO sales (product_id, amount) VALUES (1, 30);

-- Get sales by product
SELECT products.name, SUM(sales.amount) 
FROM products 
INNER JOIN sales 
    ON sales.product_id = products.id
GROUP BY products.id 
ORDER BY 2 DESC;

-- Get sales by category
SELECT category, SUM(sales.amount) 
FROM products 
INNER JOIN sales 
    ON sales.product_id = products.id 
GROUP BY products.category;