use springrestdb;

create table if not exists address (
	id int(6) not null auto_increment,
	country varchar (20) not null,
	city varchar (20) not null,
	street varchar (20) not null,
	postalcode int (5) not null,
	PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE if not exists person (
	id int(6) NOT NULL AUTO_INCREMENT,
	name varchar(20) NOT NULL,
	surname varchar(20) NOT NULL,
	email varchar(20),
	phone_number varchar(16),
	address_id int(6) NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT `FK_student_person_address` FOREIGN KEY (address_id) REFERENCES `address` (id) 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE if not exists springrestdb.phone (
	id int(6) NOT NULL AUTO_INCREMENT,
	model varchar(40),
	description varchar(100),
	os varchar(20),
	cpu varchar (20),
	image_url varchar(20),
	PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO phone
VALUES (1, "HTC Desire", "asdfgag agag", "Android 2.3", "Single core");

INSERT INTO phone
VALUES (2, "Iphone 4S", "Very good phone...", "IOS 7", "Dual core");

INSERT INTO phone
VALUES (3, "SONY Z1 Compact", "Very good phone...", "Android 4.4", "Quad core");

INSERT INTO phone
VALUES (4, "SONY Z3 Compact", "Super duper phone...", "Android 4.4", "Quad core");

drop table springrestdb.phone;

use springrestdb;
ALTER TABLE springrestdb.phone AUTO_INCREMENT = 1
select * from springrestdb.phone;