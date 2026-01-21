UPDATE users
SET yearly_salary = Null
WHERE full_name = 'John Doe';

ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0);