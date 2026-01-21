CREATE TABLE employers (
    company_name VARCHAR(250),
    company_address VARCHAR(300),
    -- yearly_revenue FLOAT(5, 2), --123.45(allowed because 5 digits in total and two digits after .), 1234.2(will not be allowed)
    yearly_revenue DECIMAL(5, 2),
    is_hiring BOOLEAN
);