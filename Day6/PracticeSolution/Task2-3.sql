-- task 2 and 3
CREATE TABLE products (
    product_name VARCHAR(200),
    price NUMERIC(10,2), -- 10 digits in total and 2 digits after decimal 
    description TEXT,
    amount_in_stock SMALLINT,
    image_path VARCHAR(500)
);