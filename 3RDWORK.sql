SELECT * FROM customer WHERE address IS NULL;
SELECT * FROM customer WHERE address IS NOT NULL;
UPDATE customer SET ContactName = "Harsh Baliger", City = "Dharwad"  WHERE custId =1;
UPDATE customer SET contactTitle = "Owner", address = "Narendra Oni Dhummawad", postalcode = 724262, country="INDIA" WHERE custId = 1;
DELETE FROM customer WHERE country="UK" ;
SELECT * FROM customer LIMIT 3;
SELECT * FROM customer LIMIT 8;
SELECT MIN(unitprice) FROM orderdetail;
SELECT MAX(unitprice) FROM orderdetail;
SELECT MIN(unitPrice) AS SmallestPrice, orderid FROM orderdetail GROUP BY orderid;
SELECT COUNT(*) FROM orderdetail;
SELECT count(categoryid) FROM product WHERE unitPrice < 20;
SELECT Sum(quantity) from orderdetail;
SELECT Sum(quantity) from orderdetail where productId=42;
SELECT avg(unitprice) from orderdetail;
SELECT avg(unitprice) from orderdetail where productid=2;
SELECT * FROM customer where contactName like "A%";
SELECT * FROM customer where city like 'M_xi__ D.F.';
SELECT * FROM customer where city like '%S%';
select * from customer where city like 'Sa%';
select * from customer where contactName like 'H%' OR contactName like 'S%'; 
select * from customer where contactName like '%s';
select * from customer where contactName like 'S%a';
select * from customer where contactname like '%Sh%';
select * from customer where contactName like 'S___%';
select * from customer where contactName like '___s%';
select * from customer where country like 'Spain';
select * from customer where contactName like '%sh';
select * from customer where contactName like '%sh%';
select * from customer where city like '_ondon';
select * from customer where contactTitle like '[OS]%';
select * from customer where contactName like '{[A-F]%';
select * from customer where country in ('Germany', 'Mexico', 'UK');
select * from customer where country not in ('Germany', 'Mexico', 'UK');
select * from product where unitprice between 10 and 20 ;
select * from product where unitprice not between 10 and 20 ;
select * from product where unitprice between 20 and 30 and categoryId in (3,6,5);
select * from product where productName between 'Product HHYDP' and 'Product CKEDC' order by categoryId;
select custid as id from customer ;
select custid as id, contactname as customer from customer;

SELECT COUNT(custID), Country
FROM Customer
GROUP BY Country
ORDER BY COUNT(custID) DESC;





