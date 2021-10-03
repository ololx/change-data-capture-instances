CREATE TABLE department (
    department_id     INTEGER PRIMARY KEY,
    code    varchar(5) UNIQUE NOT NULL
);

CREATE TABLE employee (
    employee_id     INTEGER PRIMARY KEY,
    department_id     INTEGER NOT NULL REFERENCES department (department_id) ON DELETE CASCADE,
    code    varchar(5) UNIQUE NOT NULL,
    fillname    varchar UNIQUE NOT NULL
);