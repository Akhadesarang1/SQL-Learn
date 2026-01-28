INSERT INTO users (first_name, last_name, email, salary)
VALUES ('Max', 'Schwarz', 'max@test.com', 11000),
  ('Manuel', 'Lorenz', 'manuel@test.com', 12800),
  ('Julie', 'Barnes', 'julie@test.com', 15000),
  ('Anna', 'Mayers', 'anna@test.com', 13000),
  ('Michael', 'Smit', 'michael@test.com', 9000),
  ('Frank', 'Kenneth', 'frank@test.com', 10000);

INSERT INTO addresses (street, house_number, postal_code, city, user_id)
VALUES ('Teststreet', '5A', '12345', 'Munich', 2),
  ('Some Place', '1', '12345', 'Munich', 1),
  ('My Street', '101', '98765', 'My City', 3),
  ('Foodstreet', '8', '41811', 'New York', 4),
  ('Teststreet', '10', '12345', 'Munich', 5),
  ('Teststreet', '11', '12345', 'Munich', 6);