CREATE DATABASE IF NOT EXISTS login_db;
USE login_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

INSERT INTO users (username, password) VALUES
('admin', '1234'),
('user1', 'pass1'),
('user2', 'pass2');
