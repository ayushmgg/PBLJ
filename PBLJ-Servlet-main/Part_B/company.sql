CREATE DATABASE IF NOT EXISTS company;
USE company;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary DOUBLE
);

INSERT INTO employees VALUES
(1, 'John Doe', 'IT', 60000),
(2, 'Jane Smith', 'HR', 55000),
(3, 'Rahul Mehta', 'Finance', 65000),
(4, 'Priya Sharma', 'Marketing', 58000);
