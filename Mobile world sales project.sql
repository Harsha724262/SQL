Create database mobileworld ;
select * from sales;

#1 /* How many unique Colours does the data have? */
SELECT DISTINCT  Colors FROM sales;

#2 /* What is the most selling Mobile */
SELECT  sum(Rating) AS qty, Mobile
FROM sales
GROUP BY  Mobile
ORDER BY qty DESC;

#3 /* What Mobile had the largest amount? */
SELECT Mobile, SUM(`Selling Price`) AS total_amount
FROM sales
GROUP BY Mobile
ORDER BY total_amount DESC;

#4 /* How many unique Brands types does the data have? */
SELECT  DISTINCT Brands FROM sales;

#5 /* Which Mobile type selling the most?*/
SELECT Mobile, COUNT(*) 
FROMsales
GROUP BY  Mobile ;

#6 /* How many unique mobile types does the data have? */
SELECT  DISTINCT  Mobile FROM sales;

 #7 /*Write a SQL query to print details of the Brands whose NAME ends with ‘a’ */
 SELECT * FROM sales
WHERE Brands LIKE '%a' ;
 
#8 /* Write an SQL query to fetch the count of colours having Rating  ‘4.2’.*/
SELECT Rating , COUNT(*) as TOTAL_COUNT 
FROM Sales
 WHERE Rating = '4.2';

#9 /*  Write an SQL query to show only odd rows from sales table.*/
SELECT * FROM sales 
WHERE Memory % 2 != 0;

 #10 /* Write an SQL query to show only even rows from sales table.*/
SELECT * FROM sales 
WHERE Memory % 2 = 0;

#11 /* Write an SQL query to show one row twice in results from a table.*/
SELECT * FROM sales
UNION ALL
SELECT * FROM sales ORDER BY Models;

#12 /* Write an SQL query to list Brands which does not get Discount*/
SELECT Brands FROM sales
WHERE Discount = '0' ;

#13 /* Write an SQL query to fetch the Details of the samsung Brand.*/
SELECT * FROM sales 
WHERE Brands = 'SAMSUNG' ;

#14 /*Write an SQL query to fetch the names of Brands who have highest Discount*/
SELECT Brands , Discount 
FROM sales 
WHERE Discount = (SELECT MAX(Discount) FROM sales);

#15 /* Write an SQL query to find the average Discount for each Brands*/
SELECT Brands , 
AVG(Discount) AS AVERAGE
FROM sales 
GROUP BY Brands;

#16 /*Write an SQL query to show the top 3 Brands with the highest Discount percentage . */
SELECT * FROM sales ORDER BY `discount percentage` LIMIT 3;

#17 /* Write an SQL query to find the Colors which has the same Discount as a Black */
 SELECT Discount FROM sales 
 WHERE Colors = 'Black';
 
 #18 /* Write an SQL query to fetch the count of Brands */
SELECT COUNT(*) 'Brands'
FROM sales ; 

#19 /* Write an SQL query to find the Brands which selling price  lies in the range of 9000 and 15000. */
 SELECT Brands FROM sales 
 WHERE `Selling Price` BETWEEN 9000 AND 15000 ;

#20 /* Write an SQL query to display both the Brands and Colors together.*/ 
SELECT CONCAT( Brands, "       " ,Colors ) 
AS Newname 
FROM sales ;
 






