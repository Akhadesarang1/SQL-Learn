-- task 6; Add id column 
ALTER TABLE products
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT; --mysql
ADD COLUMN id SERIAL PRIMARY KEY; -- postgresql