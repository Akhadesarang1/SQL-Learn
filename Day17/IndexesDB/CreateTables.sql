CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  -- MySQL
--   id SERIAL PRIMARY KEY,
  -- -- Postgresql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  email VARCHAR(300) UNIQUE NOT NULL,
  salary INT CHECK (salary > 0)
);

CREATE TABLE addresses (
  id INT PRIMARY KEY AUTO_INCREMENT,
--   id SERIAL PRIMARY KEY,
  street VARCHAR(300) NOT NULL,
  house_number VARCHAR(20) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  city VARCHAR(300) NOT NULL,
  -- could use separate table
  user_id INT REFERENCES users ON DELETE CASCADE
);
