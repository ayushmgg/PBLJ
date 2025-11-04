CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE attendance (
    roll_no INT,
    name VARCHAR(50),
    status VARCHAR(10),
    PRIMARY KEY (roll_no, name)
);

INSERT INTO attendance VALUES
(101, 'Aarav Singh', 'Present'),
(102, 'Riya Patel', 'Absent'),
(103, 'Karan Gupta', 'Present');
