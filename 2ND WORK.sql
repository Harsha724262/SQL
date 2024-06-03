#Select all customers from Germany or USA;
SELECT * FROM CUSTOMER WHERE COUNTRY= "GERMANY" OR COUNTRY= "USA";
#Select all customers from USA;
SELECT * FROM customer WHERE NOT COUNTRY="USA";
#Select all customers with a CustomerID greater than 80
SELECT *FROM customer where CUSTOMERID > 80;
#Sort the products by price
SELECT * FROM product ORDER BY price;
#Sort the products from highest to lowest price;
SELECT * FROM PRODUCTS ORDER BY PRICE DESC;
SELECT * FROM CUSTOMERS order by COUNTRY, CUSTOMERSNAME ;
#Select all customers from UK that starts with the letter 'G':
SELECT * FROM customer WHERE NOT COUNTRY = 'USA' AND CUSTOMERNAME LIKE 'G%';
