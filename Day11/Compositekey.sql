-- before
-- Intermediate table => n:n
CREATE TABLE projects_employees (
  id SERIAL PRIMARY KEY, -- Postgresql
  employee_id INT REFERENCES employees ON DELETE CASCADE,
  project_id INT REFERENCES projects ON DELETE CASCADE
);

-- with composite keys
-- Intermediate table => n:n
CREATE TABLE projects_employees (
  employee_id INT , -- change happened due to line 15
  project_id INT REFERENCES projects ON DELETE CASCADE,
  PRIMARY KEY(employee_id, project_id),
  FOREIGN KEY (employee_id, project_id) REFERENCES employees(id) ON DELETE CASCADE
);