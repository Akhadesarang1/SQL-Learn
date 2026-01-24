-- SELECT * FROM users
-- WHERE id > 5
-- UNION
-- SELECT * FROM users
-- WHERE id < 3;

-- SELECT * FROM users
-- UNION
-- SELECT * FROM addresses; -- Query with errors. Please, check the error below.each UNION query must have the same number of columns

SELECT id, first_name FROM users
UNION
SELECT id, street FROM addresses;