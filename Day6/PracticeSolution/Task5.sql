-- task5 Add constraints

-- mysql 
ALTER TABLE products
MODIFY COLUMN product_name VARCHAR(200) NOT NULL,
MODIFY COLUMN price NUMERIC(10,2) NOT NULL CHECK (price > 0),
MODIFY COLUMN description TEXT NOT NULL,
MODIFY COLUMN amount_in_stock SMALLINT CHECK (amount_in_stock >= 0);

--postgresql
ALTER COLUMN product_name SET NOT NULL,
ALTER COLUMN price SET NOT NULL,
ALTER COLUMN description SET NOT NULL,
ADD CONSTRAINT price_positive CHECK (price > 0),
ADD CONSTRAINT amount_in_stock_positive CHECK (amount_in_stock > 0);