-- Movie table creation
create table movie_n
	(movie_id SERIAL primary key,
	movie_name varchar(100),
	genre varchar(50),
	movie_date date,
	movie_time time,
	movie_length integer,
	rating varchar(10)
);

-- Concession table creation
create table concession_n
	(concession_id SERIAL primary key,
	item_category varchar(50),
	item_name varchar(50),
	price numeric(5,2)
);

-- Staff table creation
create table staff_n
	(staff_id SERIAL primary key,
	staff_fname varchar(50),
	staff_lname varchar(50),
	staff_phone varchar(20),
	emp_class varchar(2)
);

-- Contact table creation
create table Contact_n
	(contact_id SERIAL primary key,
	address varchar(100),
	address_2 varchar(100),
	city varchar(50),
	state varchar(50),
	country varchar(50),
	postal_code varchar(10),
	email varchar(50),
	phone varchar(20)
);

-- Customer table creation
create table customer_n
	(customer_id SERIAL primary key,
	first_name varchar(50),
	last_name varchar(50),
	contact_id integer not null,
	birthdate date,
	customer_age integer,
	foreign key(contact_id) references contact_n(contact_id)
);

-- Ticket table creation
create table tickets_n
	(ticket_id SERIAL primary key,
	customer_id integer not null,
	movie_id integer not null,
	hall varchar(5),
	row_num varchar(5),
	seat_number integer,
	staff_id integer,
	foreign key(customer_id) references customer_n(customer_id),
	foreign key(movie_id) references movie_n(movie_id),
	foreign key(staff_id) references staff_n(staff_id)
);

-- Payment table creation
create table payment_n
	(payment_id SERIAL primary key,
	customer_id integer not null,
	ticket_id integer not null,
	concession_id integer not null,
	amount numeric(10,2),
	payment_date timestamp,
	foreign key(customer_id) references customer_n(customer_id),
	foreign key(ticket_id) references tickets_n(ticket_id),
	foreign key(concession_id) references concession_n(concession_id)
);