
--Inserting data into my tables

INSERT INTO "Customer"(
	cust_id,
	first_name,
	last_name,
	billing_info

)VALUES(
	1,
	'John',
	'Snow',
	'007-007-007-69-69-69'

);

SELECT *
FROM "Customer"

INSERT INTO "Ticket Orders" (
	tic_order_id,
	movie_name,
	ticket_date,
	ticket_time,
	cust_id,
	seat_num

)VALUES(
	1,
	'Pacman',
	'09/01/2021',
	'20:30',
	1,
	62
);

SELECT *
FROM "Ticket Orders"

INSERT INTO "Theater_seats" (
	theater_id,
	seat_quantity
	

)VALUES(
	6,
	80
);

SELECT *
FROM "Theater_seats"

INSERT INTO "Tickets" (
	ticket_id,
	tic_order_id,
	cust_id,
	theater_id

)VALUES(
	15,
	1,
	1,
	6
);

SELECT *
FROM "Tickets"

INSERT INTO "Concessions" (
	conses_id,
	conses_type,
	stock_no,
	cust_id

)VALUES(
	656,
	'Twizzlers',
	89,
	1
);

SELECT *
FROM "Concessions"







