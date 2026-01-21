-- postgresql+ENUM => we have to create a custom type first
CREATE TYPE employement_status as ENUM('Employed', 'Self-Employed', 'Unemployed');

CREATE TABLE users (
    full_name VARCHAR(200),
    yearly_salary INT,
    current_status employement_status
--    current_status ENUM('Employed', 'Self-Employed', 'Unemployed')
);
