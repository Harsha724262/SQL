create database wallmart;
select * from sales;
------------------ Feature engineering -----------------------------
-- time_of_day--
select time,
(case
when 'time' Between "00:00:00" And "12:00:00" then "morning"
when 'time' Between "12:01:00" And "16:00:00" then "Afternoon"
else "Evening"
end)
as time_of_date
from sales;
alter table sales add column time_of_day varchar(20);

Update sales 
set time_of_day = 
(case
when 'time' Between "00:00:00" And "12:00:00" then "Morning"
when 'time' Between "12:00:01" And "16:00:00" then "Afternoon"
else "Evening"
End );

-- Add day_name column
SELECT
	date,
	DAYNAME(date)
FROM sales;

ALTER TABLE sales ADD COLUMN day_name VARCHAR(10);

UPDATE sales
SET day_name = DAYNAME(date);


-- Add month_name column
SELECT
	date,
	MONTHNAME(date)
FROM sales;

ALTER TABLE sales ADD COLUMN month_name VARCHAR(10);

UPDATE sales
SET month_name = MONTHNAME(date);

-- --------------------------------------------------------------------
-- ---------------------------- Generic ------------------------------
-- --------------------------------------------------------------------
-- How many unique cities does the data have?
SELECT 
	DISTINCT city
FROM sales;

-- In which city is each branch?
SELECT 
	DISTINCT city,
    branch
FROM sales;


--------- Product ------------------

/* How many unique product lines does the data have? */
select distinct `Product line` from sales;

/* What is the most selling product line */
select sum(quantity) as qty,`Product line`
from sales
group by `product line`
order by qty desc;

/* What is the most selling product line */
select  sum(quantity) as qty, `Product line`
from sales
group by `Product line`
order by qty desc;

/* What is the total revenue by month */
select  month_name AS month, sum(total) AS total_revenue
from sales
group by month_name 
order by total_revenue;

select * from sales;

/* What month had the largest COGS? */
select month_name AS month,sum(cogs) AS cogs
from sales
group by month_name 
order by cogs;

/* What product line had the largest revenue? */
select `Product line`, sum(total) as total_revenue
from sales
group by `Product line`
order by total_revenue desc;

/* What is the city with the largest revenue?*/
select branch,city,sum(total) as total_revenue
from sales
group by city, branch 
order by total_revenue;

/* What product line had the largest VAT? */
select `Product line`, avg(`tax 5%`) as avg_tax
from sales
group by `Product line`
order by avg_tax desc;
select * from sales;

/* Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales*/

select avg(quantity) AS avg_qnty
from sales;

select `Product line`,
	case
		when avg(quantity) > 6 then "Good"
        else "Bad"
    end as remark
from sales
group by `Product line`;

/* Which branch sold more products than average product sold? */
select branch, sum(quantity) as qnty
from sales
group by branch
having SUM(quantity) > (SELECT AVG(quantity) FROM sales);


/* What is the most common product line by gender */
select gender, `Product line`, count(gender) AS total_cnt
from sales
group by gender, `Product line`
order by total_cnt desc;

/* What is the average rating of each product line*/
select
	ROUND(AVG(rating), 2) as avg_rating,
    `Product line`
from sales
group by `Product line`
order by avg_rating desc;

-- -------------------------- Customers -------------------------------

/* How many unique customer types does the data have? */
select distinct `Customer type` from sales;

/* How many unique payment methods does the data have? */
select distinct payment from sales;


/* What is the most common customer type? */
select `Customer type`, count(*) as count
from sales
group by `Customer type`
order by count desc;

/* Which customer type buys the most?*/
select `Customer type`, count(*)
from sales
group by `Customer type`;


/* What is the gender of most of the customers?*/
select  gender, count(*) as gender_cnt
from sales
group by gender
order by gender_cnt desc;

/* What is the gender distribution per branch?*/
select gender, count(*) as gender_cnt
from sales
where branch = "C"
group by gender
order by gender_cnt desc;

/* Which time of the day do customers give most ratings? */
select  time_of_day, avg(rating) as avg_rating
from sales
group by time_of_day
order by avg_rating desc;

/* Which time of the day do customers give most ratings per branch?*/
select time_of_day, avg(rating) as avg_rating
from sales
where branch = "A"
group by time_of_day
order by avg_rating desc;

/* Which day fo the week has the best avg ratings?*/
select day_name,avg(rating) AS avg_rating
from sales
group by day_name 
order by avg_rating desc;

/* Which day of the week has the best average ratings per branch?*/
select day_name,count(day_name) total_sales
from sales
where branch = "C"
group by day_name
order by total_sales desc;



-- ---------------------------- Sales ---------------------------------

/* Number of sales made in each time of the day per weekday */
select time_of_day,count(*) AS total_sales
from sales
where day_name = "Sunday"
group by time_of_day 
order by total_sales desc;

/* Which of the customer types brings the most revenue?*/
select `Customer type`, sum(total) AS total_revenue
from sales
group by `Customer type`
order by total_revenue;

select * from sales;

-- Which city has the largest tax/VAT percent?
select city,
 round(AVG(`tax 5%`), 2) as avg_tax_pct
from sales
group by city 
order by avg_tax_pct desc;

-- Which customer type pays the most in VAT?
select `Customer type`, avg(`tax 5%`) as total_tax
from sales
group by `Customer type`
order by total_tax;





