-- SELECT price * billing_frequency AS annual_revenue
-- FROM memberships;

-- CEIL()
-- FLOOR()
-- ROUND()
-- TRUNC() TRUNCATE() mysql

SELECT CEILING(consumption) 
-- SELECT consumption
FROM memberships;

-- SELECT FLOOR(consumption, 0) 
-- -- SELECT consumption
-- FROM memberships;

-- SELECT ROUND(consumption, 0) 
-- -- SELECT consumption
-- FROM memberships;

-- for postgres
-- SELECT TRUNC(consumption, 0) 
-- -- SELECT consumption
-- FROM memberships;

-- for MySQL
-- SELECT TRUNCATE(consumption, 0) 
-- -- SELECT consumption
-- FROM memberships;