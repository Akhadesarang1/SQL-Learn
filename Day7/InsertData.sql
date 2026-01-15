INSERT INTO cities(city_name) VALUES('Pune'), ('Mumbai'), ('Thane'); -- cities table

INSERT INTO addresses (street, house_number, city_id)
VALUES
  ('Avdhut colony', 'A102', 1),
  ('Shrinagar', 'B506', 2),
  ('Diva stand', 'A106', 3); -- addresses table

INSERT INTO users(first_name, last_name, email, address_id)
VALUES
    ('Sarang','Akhade', 'akhadesarang1@gmail.com', 1),
    ('Sarang','Akhade', 'sarangakhade1@gmail.com', 2),
    ('Sarang','Akhade', 'akhadesarang1036@gmail.com', 3); -- users table

SELECT * FROM cities;