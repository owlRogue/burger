### Schema

-- CREATE DATABASE burgers_db;
USE burgers_db;

CREATE TABLE burgers
(
	id int NOT NULL AUTO_INCREMENT,
	burger_name varchar(255) NOT NULL,
	ordered BOOLEAN DEFAULT false,
	PRIMARY KEY (id)
);

INSERT INTO burgers (burger_name) VALUES ('cheese burger');
INSERT INTO burgers (burger_name) VALUES ('pickle burger');
INSERT INTO burgers (burger_name) VALUES ('blackbean burger');
INSERT INTO burgers (burger_name) VALUES ('classic burger');
INSERT INTO burgers (burger_name) VALUES ('bison burger');
INSERT INTO burgers (burger_name) VALUES ('pizza burger');

USE burgers_db;
ALTER TABLE burgers
ADD COLUMN nonburger_name BOOLEAN AFTER burger_name, 
ADD COLUMN gorgonzola BOOLEAN AFTER ordered, 
ADD COLUMN topping2 BOOLEAN AFTER ordered,
ADD COLUMN topping3 BOOLEAN AFTER ordered,
ADD COLUMN topping4 BOOLEAN AFTER ordered,
ADD COLUMN topping5 BOOLEAN AFTER ordered,
ADD COLUMN topping6 BOOLEAN AFTER ordered,
ADD COLUMN b_ordered BOOLEAN AFTER ordered
