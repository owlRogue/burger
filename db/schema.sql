### Schema

CREATE DATABASE burgers_db;
USE burgers_db;

CREATE TABLE burgers
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	ordered BOOLEAN DEFAULT false,
	PRIMARY KEY (id)
);

--  mysql --host=127.0.0.1 --port=3306 --user=root --password=root