/*
# grant all privileges  on *.* to 'admin'@'%';

# select *from mysql.user where user = 'admin';

create database eazybank;

use eazybank;

*/


/* Create users table */
create table if not exists users(
	id int not null auto_increment,
	username varchar(45) not null,
	password varchar(45) not null,
	enabled int not null,
	primary key (id)
);

/* Create authorities table */
create table if not exists authorities(
	id int not null auto_increment,
	username varchar(45) not null,
	authority varchar(45) not null,
	primary key (id)
);


/*

create unique index  ix_auth_username on authorities (username,authority);
insert ignore into users values(null, 'happy', '12345', '1');
insert ignore into authorities  values(null, 'happy', 'write')
*/


create table if not exists customer(
	id int not null auto_increment,
	email varchar(45) not null,
	pwd varchar(200) not null,
	role varchar(45) not null,
	primary key (id)
);





