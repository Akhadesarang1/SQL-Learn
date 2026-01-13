SELECT 
customer_name, 
date_created, 
is_disputed, 
id, 
volume/100 AS total_sales -- /100 is an expression and AS total_sales is for alias
FROM sales;