-- SELECT * FROM sales
-- WHERE date_fullfilled IS NOT NULL ;

SELECT * FROM sales
WHERE date_fullfilled - date_created <= 5 ; 