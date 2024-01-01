-- inserting data to Movie table
insert into movie_n
	(movie_id,
	movie_name,
	genre,
	movie_date,
	movie_time,
	movie_length,
	rating
	) values
	(1,
	'Oppenheimer',
	'Biography',
	'2023-07-19',
	'19:30',
	60*3,
	8.4
	), 
	(2,
	'The Flash',
	'Action',
	'2023-06-15',
	'18:50',
	(2*60)+24,
	'PG-13'
	);
	
	select * from movie_n;

-- inserting data to Concession table
insert into concession_n
	(concession_id,
	item_category,
	item_name,
	price
	) values
	(1,
	'Snack',
	'Popcorn',
	7.89
	),
	(2,
	'Beverage',
	'Soft Drink',
	5.89
	);
	
select * from concession_n;

-- inserting data to Staff table
insert into staff_n
	(staff_id,
	staff_fname,
	staff_lname,
	staff_phone,
	emp_class
	) values
	(1,
	'Lisa',
	'Bravo',
	'646-865-9999',
	'FT'
	),
	(2,
	'Bob',
	'Smith',
	'789-555-4444',
	'PT'
	);

select * from staff_n;
	
-- inserting data to Contact table
insert into contact_n
	(contact_id,
	address,
	address_2,
	city,
	state,
	country,
	postal_code,
	email,
	phone
	) values
	(1,
	'5878 89th st',
	'Apt 6J',
	'Queens',
	'NY',
	'USA',
	'11372',
	'jane_doe@gmail.com',
	'855-666-7452'
	),
	(2,
	'589 W 182nd st',
	'Apt 4G',
	'New York',
	'NY',
	'USA',
	'10038',
	'john_kind@gmail.com',
	'411-223-5465'
	);
	
select * from contact_n;

-- inserting data to Customer table
insert into customer_n
	(customer_id,
	first_name,
	last_name,
	contact_id,
	birthdate,
	customer_age
	) values
	(1,
	'Jane',
	'Doe',
	1,
	'1985-08-16',
	date_part('YEAR', age(current_date, '1985-08-16')) 
	),
	(2,
	'John',
	'Kind',
	2,
	'1988-05-07',
	date_part('YEAR', age(current_date, '1988-05-07'))
	);

select * from customer_n;

-- inserting data to Tickets table
insert into tickets_n
	(ticket_id,
	customer_id,
	movie_id,
	hall,
	row_num,
	seat_number,
	staff_id
	) values
	(1,
	1,
	1,
	'IMAX1',
	'Q',
	27,
	1),
	(2,
	2,
	2,
	'Prime2',
	'B',
	14,
	2
	);

select * from tickets_n;

-- inserting data to Payment table
insert into payment_n
	(payment_id,
	customer_id,
	ticket_id,
	concession_id,
	amount,
	payment_date
	) values
	(1,
	1,
	1,
	2,
	32.58,
	'2023-07-19 18:45:30'
	),
	(2,
	2,
	2,
	1,
	27.02,
	'2023-06-15 17:05:03'
	);
	
select * from payment_n;