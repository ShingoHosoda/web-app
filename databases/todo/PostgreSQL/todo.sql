CREATE TABLE todo(
  id UUID PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
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
UPDATE todo SET completed = TRUE WHERE id = '7ac91684-9ee0-4877-9921-d0c281c7aead';
-- Delete
DELETE FROM todo WHERE id = '94bf5f2b-6fa4-493e-92c8-03230fa6e534';
-- Sort
SELECT * FROM todo ORDER BY title ASC;
SELECT * FROM todo ORDER BY title DESC;
SELECT * FROM todo ORDER BY duedate ASC;
SELECT * FROM todo ORDER BY duedate DESC;
SELECT * FROM todo ORDER BY completed ASC;
SELECT * FROM todo ORDER BY completed DESC;
-- Limit
SELECT * FROM todo LIMIT 5;
-- データベースの作成
CREATE DATABASE データベース名;
-- テーブルの削除
DROP TABLE テーブル名;