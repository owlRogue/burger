### Schema

-- CREATE DATABASE burgers_db;
USE burgers_db;

CREATE TABLE burgers
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	ordered BOOLEAN DEFAULT false,
	PRIMARY KEY (id)
);

INSERT INTO burgers (name) VALUES ('cheese burger');
INSERT INTO burgers (name) VALUES ('pickle burger');
INSERT INTO burgers (name) VALUES ('blackbean burger');
INSERT INTO burgers (name) VALUES ('classic burger');
INSERT INTO burgers (name) VALUES ('bison burger');
INSERT INTO burgers (name) VALUES ('pizza burger');
