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

INSERT INTO 
    departments(name)
VALUES
    ("Managers"), ("Bartenders"), ("Waiters"), ("Kitchen");

INSERT INTO 
    employees(first_name, last_name, department_id)
VALUES
    ("Adam", "Smith", (SELECT id FROM departments WHERE name = "Managers") ),
    ("Gloria", "Adams", (SELECT id FROM departments WHERE name = "Managers")),
    ("Philip", "Rezno", (SELECT id FROM departments WHERE name = "Bartenders")),
    ("Natalie", "de La Cruz", (SELECT id FROM departments WHERE name = "Bartenders")),
    ("Victoria", "Miles", (SELECT id FROM departments WHERE name = "Bartenders")), 
    ("Melanie", "Prost", (SELECT id FROM departments WHERE name = "Waiters")),
    ("David", "Khaz", (SELECT id FROM departments WHERE name = "Waiters")),
    ("Anna", "Kowalski", (SELECT id FROM departments WHERE name = "Waiters")),
    ("Brian", "Ramirez", (SELECT id FROM departments WHERE name = "Kitchen")),
    ("Angela", "Sailor", (SELECT id FROM departments WHERE name = "Kitchem"));