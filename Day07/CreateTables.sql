CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
    id SERIAL PRIMARY KEY , -- postgresql
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    address_id INT NOT NULL -- foreign key
);

CREATE TABLE addresses (
    id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
    id SERIAL PRIMARY KEY , -- postgresql
    street VARCHAR(450) NOT NULL,
    house_number VARCHAR(50) NOT NULL, -- A201 
    city_id INT NOT NULL
);

CREATE TABLE cities(
    id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
    id SERIAL PRIMARY KEY , -- postgresql
    city_name VARCHAR(300) NOT NULL
);