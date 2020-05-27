/* (Database Fundamentals, Assignment Part D, Autumn 2020 */
/* First author's name: Kyle Todd */
/* First author's email: 13572692@student.uts.edu.au*/
/* Second author's name: Nina Tran */
/* Second author's email: 13568631@student.uts.edu.au*/
/* Third author's name: Lachlan Alcott */
/* Third author's email: 13544818@student.uts.edu.au*/
/* script name: Tut4_38_Tran_13568631_Alcott_13544818_Todd_13572692_PartD.SQL */
/* purpose:     Builds PostgreSQL tables for Pizza database */
/* date:        27/05/2000 */

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
	pizza_Name varchar(20) NOT NULL,
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

-- Values for Order_T
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('145dfs','Pick-up','PayPal');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('154asw','Delivery','Cash');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('791ktr','Delivery','Credit Card');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('179irt','Pick-up','Credit Card');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('365fhg','Pick-up','Cash');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('475pqw','Delivery','Credit Card');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('qwe735','Pick-up','PayPal');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('473kgh','Delivery','Credit Card');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('846hdg','Delivery','Cash');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('030uwu','Pick-up','Credit Card');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('707lol','Delivery','PayPal');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('134ewe','Pick-up','Cash');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('683opa','Delivery','Cash');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('766ikd','Pick-up','PayPal');
INSERT INTO order_T (order_ID,order_Type,payment_Method) VALUES ('576kgp','Pick-up','PayPal');

--Values for Pizza
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('100', 'Pepperoni');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('174', 'Meat Lovers');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('172', 'Hawaiian');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('571', 'Loaded Pepperoni');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('283', 'Philly Cheese Steak');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('120', 'Steak and Bacon');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('193', 'Godfather');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('432', 'Avocado Veg');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('735', 'Supreme');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('142', 'Fire Breather');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('532', 'Vegorama');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('635', 'Loaded Burger');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('835', 'Taco Fiesta');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('223', 'Simply Cheese');
INSERT INTO pizza (pizza_ID, pizza_Name) VALUES ('997', 'Ham and Cheese');

-- Values for purchased_pizza
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('1', '145dfs', '635');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('2', '576kgp', '835');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('1', '145dfs', '223');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('1', '846hdg', '432');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('3', '365fhg', '120');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('1', '030uwu', '283');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('1', '134ewe', '142');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('1', '365fhg', '635');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('1', '791ktr', '193');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('2', '683opa', '532');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('1', '576kgp', '997');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('1', '791ktr', '571');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('3', '154asw', '835');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('1', '766ikd', '100');
INSERT INTO purchased_pizza (quantity, order_ID, pizza_ID) VALUES ('2', '473kgh', '142');


/* Database Statements */
SELECT * FROM order_T;
SELECT * FROM purchased_pizza;
SELECT * FROM pizza;
