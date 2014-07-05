create table user(
	id	integer primary key auto_increment,
	username  varchar(40) not null,
	password  varchar(40) not null
	
);

insert into user values(null,'admin','123456');