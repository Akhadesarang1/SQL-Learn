ALTER TABLE users
 --postgres
 ALTER COLUMN full_name SET NOT NULL,
 ALTER COLUMN current_status SET NOT NULL;
-- -- --mysql
-- MODIFY COLUMN full_name VARCHAR(300) SET NOT NULL;
