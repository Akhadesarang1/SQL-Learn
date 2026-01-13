-- SELECT * FROM sales
-- WHERE volume > 1000 ; 

-- SELECT * FROM sales
-- WHERE is_recurring IS TRUE ; 

-- SELECT * FROM sales
-- WHERE (is_disputed IS TRUE) AND (volume > 500) ; 

-- SELECT * FROM sales
-- WHERE (is_disputed IS TRUE) OR (volume > 500) ;

-- SELECT * FROM sales
-- WHERE date_created > '2021-11-01' AND date_created < '2022-05-01';

-- SELECT * FROM sales
-- WHERE date_created BETWEEN '2021-11-02' AND '2022-04-30';

SELECT * FROM sales
WHERE volume > 1000 AND volume < 10000 ;