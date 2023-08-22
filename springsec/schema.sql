
grant all privileges  on *.* to 'admin'@'%';

select * from mysql.user where user = 'admin';


/* Create users table */
create table if not exists eazybank.users(
	id int not null auto_increment,
	username varchar(45) not null,
	password varchar(45) not null,
	enabled int not null,
	primary key (id)
);

/* Create authorities table */
create table if not exists eazybank.authorities(
	id int not null auto_increment,
	username varchar(45) not null,
	authority varchar(45) not null,
	primary key (id)
);


create unique index  ix_auth_username on eazybank.authorities (username,authority);
insert into eazybank.users(username, password, enabled) values('happy', '12345', '1');
insert into eazybank.authorities(username, authority)  values('happy', 'write');


create table if not exists eazybank.customer(
	id int not null auto_increment,
	email varchar(45) not null,
	pwd varchar(200) not null,
	role varchar(45) not null,
	primary key (id)
);

INSERT INTO  eazybank.customer (email, pwd, role)
 VALUES ('johndoe@example.com', '54321', 'admin');



