-- modify data type of 'hall' column in Tickets table: max number of varchar from 5 to 20 
alter table tickets_n
	alter column hall type varchar(20);

-- modify column name from 'row_num' to 'row' in Tickets table
alter table tickets_n
	rename column row_num to row_letter;
	
-- modify column name from 'movie_date' to 'show_date' in Movie table
-- modify column name from 'movie_time' to 'show_time' in Movie table
alter table movie_n
	rename column movie_date to show_date;

alter table movie_n
	rename column movie_time to show_time;
	
-- correct rating value in Movie table
update movie_n
set rating = 'R'
where movie_id = 1;