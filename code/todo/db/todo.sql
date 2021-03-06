DROP DATABASE IF EXISTS todo;
CREATE DATABASE todo;

GRANT ALL ON todo.* to 'todo'@'localhost' IDENTIFIED BY 'sekrit';

USE todo;

CREATE TABLE todo_item (
id INTEGER PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(250) NOT NULL,
description TEXT NOT NULL,
priority INTEGER NOT NULL DEFAULT 5,
due_date DATETIME
);
