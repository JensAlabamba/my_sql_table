CREATE TABLE departments(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE employees(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL, 
    last_name VARCHAR(255) NOT NULL,
    department_id INTEGER NOT NULL

    FOREIGN KEY (department_id) REFERENCES departments(id)
);
    