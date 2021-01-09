CREATE TABLE lawyers ("register" integer PRIMARY KEY, "name" varchar(120), "customers_number" integer);

INSERT INTO lawyers ("register","name","customers_number")
values (1649,'Marty',5),
	   (2427,'Jonathan',15),
	   (3365,'Chelsey',20),
	   (4153,'Dorothy',16),
	   (5525,'Penny',8);

(SELECT name, customers_number
FROM lawyers
ORDER BY customers_number DESC LIMIT 1)

UNION ALL

(SELECT name, customers_number
FROM lawyers
ORDER BY customers_number LIMIT 1)

UNION ALL

(SELECT 'Average', round((SUM(customers_number)/count(register)), 0)
FROM lawyers)