DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;

CREATE TABLE users (
    id SERIAL PRIMARY KEY, -- postgresql
    id INT PRIMARY KEY  AUTO_Increment, -- Mysql
    full_name VARCHAR(200) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0),
    current_status employement_status -- postgresql
   current_status ENUM('Employed', 'Self-Employed', 'Unemployed') -- mysql
);

CREATE TABLE employers (
    id SERIAL PRIMARY KEY, -- postgresql
    id INT PRIMARY KEY AUTO_Increment, -- mysql
    company_name VARCHAR(250) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK(yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations(
    id SERIAL PRIMARY KEY,-- postgres
    id INT PRIMARY KEY AUTO_Increment, -- mysql
    user_id INT,
    employer_id INT,
    message TEXT NOT NULL,
    date_sent TIMESTAMP
);