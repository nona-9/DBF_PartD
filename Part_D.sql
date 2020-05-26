/* Clear Tables */
--DROP TABLE order_T;
--DROP TABLE purchased_pizza;
--DROP TABLE pizza;

/* Create Tables */
CREATE TABLE order_T
(	
		order_ID varchar(6) NOT NULL,
		order_Type varchar(20) NOT NULL, 	
		payment_Method varchar(20) NOT NULL,
		PRIMARY KEY (order_ID)
);

CREATE TABLE pizza
(	
	pizza_ID varchar(10) NOT NULL,
	pizza_Name varchar(10) NOT NULL,
	PRIMARY KEY (pizza_ID)
);

CREATE TABLE purchased_pizza
(	
	quantity INTEGER NOT NULL,
	order_ID varchar(6) REFERENCES order_T(order_ID),
	pizza_ID varchar(10) REFERENCES pizza(pizza_ID),
	PRIMARY KEY (order_ID,pizza_ID)
);



/* Insert Data into tables */

 INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('145dfs','Real','PayPal');
--INSERT INTO * --Code here
--INSERT INTO * --Code here

/* Database Statements */
SELECT * FROM order_T;
SELECT * FROM purchased_pizza;
SELECT * FROM pizza;
