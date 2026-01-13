-- task 1

-- CREATE DATABASE online_shop;

-- task 2 and 3
-- CREATE TABLE products (
--     product_name VARCHAR(200),
--     price NUMERIC(10,2), -- 10 digits in total and 2 digits after decimal 
--     description TEXT,
--     amount_in_stock SMALLINT,
--     image_path VARCHAR(500)
-- );

-- task4

-- INSERT INTO products(product_name, price, description, amount_in_stock, image_path)
-- VALUES('Software application',
-- 17000.00,
-- 'Created a software application according to clients requirements',
-- 2,
-- 'Docuagent.com'
-- );

-- task5 Add constraints

-- ALTER TABLE products
-- MODIFY COLUMN product_name VARCHAR(200) NOT NULL,
-- MODIFY COLUMN price NUMERIC(10,2) NOT NULL CHECK (price > 0),
-- MODIFY COLUMN description TEXT NOT NULL,
-- MODIFY COLUMN amount_in_stock SMALLINT CHECK (amount_in_stock >= 0);

-- ALTER COLUMN product_name SET NOT NULL,
-- ALTER COLUMN price SET NOT NULL,
-- ALTER COLUMN description SET NOT NULL,
-- ADD CONSTRAINT price_positive CHECK (price > 0),
-- ADD CONSTRAINT amount_in_stock_positive CHECK (amount_in_stock > 0);

-- task 6; Add id column 
 ALTER TABLE products
--  ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;
ADD COLUMN id SERIAL PRIMARY KEY;