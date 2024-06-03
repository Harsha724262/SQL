#using union function
select city from customer
union 
select city from supplier
order by city;
select city from customer 
union all 
select city from supplier
order by city;
SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customer
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Supplier;
select city from customer
where city = "Berlin"
union 
select city from supplier
where city = "Berlin"
order by city;
select city from customer
where city = "Berlin" and country = "Germany"
union all 
select city from supplier
where city = "Berlin" and country = "Germany"
order by city ;
#using group by case
select count(custid),country 
from customer 
group by country;
SELECT COUNT(CustID), Country
FROM Customer
GROUP BY Country
ORDER BY COUNT(CustID) DESC;
#USING HAVING CASE
SELECT COUNT(CustID), Country
FROM Customer
GROUP BY Country
HAVING COUNT(CustID) > 9;
SELECT COUNT(CustID), Country
FROM Customer
GROUP BY Country
HAVING COUNT(CustID) > 5
ORDER BY count(CustId) ASC;
#using exists function
SELECT contactName
FROM supplier
WHERE EXISTS 
(SELECT productName FROM product WHERE product.supplierId = supplier.supplierID );

#using ANY ALL Function
SELECT productName
FROM product
WHERE productId = ANY
  (SELECT productId
  FROM orderdetail
  WHERE Quantity = 10);
  SELECT productName
FROM product
WHERE productID = ALL
  (SELECT productId
  FROM orderdetail
  WHERE Quantity = 10);
#using insert into function
INSERT INTO customer (companyName, city, country)
SELECT contactName, city, country FROM supplier
WHERE country='Germany';



