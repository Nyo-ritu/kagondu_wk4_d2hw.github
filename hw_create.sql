CREATE TABLE "Customer" (
  "cust_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "billing_info" VARCHAR(150)
  
);

CREATE TABLE "Ticket Orders" (
  "tic_order_id" SERIAL PRIMARY KEY, 
  "movie_name" VARCHAR(100) NOT NULL,
  "ticket_date" DATE NOT NULL,
  "ticket_time" VARCHAR(20) NOT NULL,
  "cust_id" INTEGER NOT NULL,
	"seat_num" INTEGER,
	FOREIGN KEY(cust_id) REFERENCES "Customer"(cust_id)
 
);

CREATE TABLE "Theater_seats" (
  "theater_id" SERIAL PRIMARY KEY,
  "seat_num" INTEGER,
	"seat_quantity" INTEGER
);

CREATE TABLE "Tickets" (
  "ticket_id" SERIAL  PRIMARY KEY, 
  "tic_order_id" INTEGER NOT NULL,
  "cust_id" INTEGER NOT NULL,
  "theater_id" INTEGER NOT NULL,
	FOREIGN KEY(cust_id) REFERENCES "Customer"(cust_id),
	FOREIGN KEY(tic_order_id) REFERENCES "Ticket Orders"(tic_order_id),
	FOREIGN KEY(theater_id) REFERENCES "Theater_seats"(theater_id)
);

CREATE TABLE "Concessions" (
  "conses_id" SERIAL PRIMARY KEY,
  "conses_type" VARCHAR(100),
  "stock_no" INTEGER,
  "cust_id" INTEGER
);

