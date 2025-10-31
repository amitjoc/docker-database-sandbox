CREATE DATABASE IF NOT EXISTS docker_test_db;
USE docker_test_db;
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);
INSERT INTO users (name, email) VALUES ('Amit Joshi', 'amit@example.com');