-- using single inner join
SELECT *
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id;

-- using multiple inner join

SELECT *
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities AS c ON a.city_id = c.id;