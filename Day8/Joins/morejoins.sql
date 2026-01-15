SELECT city_name, u.first_name, u.last_name,a.street, a.house_number
FROM cities AS c
-- INNER JOIN addresses AS a ON c.id = a.city_id;
LEFT JOIN addresses AS a ON c.id = a.city_id
INNER JOIN users As u ON u.address_id = a.id;