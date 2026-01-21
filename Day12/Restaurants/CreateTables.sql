CREATE TABLE payment_methods(
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- my
    id SERIAL PRIMARY KEY, -- post
    name VARCHAR(200)
);

CREATE TABLE tables(
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- my
    id SERIAL PRIMARY KEY, -- post
    num_seats INT,
    category VARCHAR(200)
);

CREATE TABLE bookings(
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- my
    id SERIAL PRIMARY KEY, -- post
    booking_date DATE NOT NULL,
    num_guests INT NOT NULL,
    amount_billed NUMERIC(6,2) NOT NULL,
    amount_tipped NUMERIC(6,2),
    payment_id INT REFERENCES payment_methods,
    table_id INT REFERENCES tables
);