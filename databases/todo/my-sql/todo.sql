SHOW databases;
CREATE DATABASE practice;
USE practice;
-- CREATE DATABASE todo;
-- USE todo;
CREATE TABLE todo(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  title VARCHAR(255) NOT NULL,
  duedate DATE NOT NULL,
  completed BOOLEAN NOT NULL
);
-- CRUD
-- Create
INSERT INTO todo(title, duedate, completed) VALUES('タイトル01', '2025-03-01', FALSE);
INSERT INTO todo(title, duedate, completed) VALUES('タイトル02', '2025-03-15', FALSE);
INSERT INTO todo(title, duedate, completed) VALUES('タイトル03', '2025-03-31', FALSE);
INSERT INTO todo(title, duedate, completed) VALUES('タイトル04', '2025-03-15', FALSE);
INSERT INTO todo(title, duedate, completed) VALUES('タイトル05', '2025-03-01', FALSE);
INSERT INTO todo(title, duedate, completed) VALUES('タイトル06', '2025-03-01', FALSE);
INSERT INTO todo(title, duedate, completed) VALUES('タイトル07', '2025-03-15', FALSE);
INSERT INTO todo(title, duedate, completed) VALUES('タイトル08', '2025-03-31', FALSE);
INSERT INTO todo(title, duedate, completed) VALUES('タイトル09', '2025-03-15', FALSE);
INSERT INTO todo(title, duedate, completed) VALUES('タイトル10', '2025-03-01', FALSE);
INSERT INTO todo(title, duedate, completed) VALUES('タイトル11', '2025-03-01', FALSE);
-- Read
SELECT * FROM todo;
-- Update
UPDATE todo SET completed = TRUE WHERE id = 1;
UPDATE todo SET completed = TRUE WHERE id = 10;
UPDATE todo SET completed = TRUE WHERE id = 11;
SELECT * FROM todo;
-- Delete
DELETE FROM todo WHERE id = 11;
SELECT * FROM todo;
-- Sort
SELECT * FROM todo ORDER BY title ASC;
SELECT * FROM todo ORDER BY title DESC;
SELECT * FROM todo ORDER BY duedate ASC;
SELECT * FROM todo ORDER BY duedate DESC;
SELECT * FROM todo ORDER BY completed ASC;
SELECT * FROM todo ORDER BY completed DESC;
-- Limit
SELECT * FROM todo LIMIT 5;