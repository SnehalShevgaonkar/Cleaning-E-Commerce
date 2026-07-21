use cleaning_project_2;
-- 1.Check duplicate
select order_id,count(*)
from ecommerce_orders_cleaned
group by order_id
having count(*)>1;

-- Empty/Null Values
-- 2.for Cit column

select *
from ecommerce_orders_cleaned
where city is null or trim(city)='';

-- Full column audit
/*select
sum(case when city is null or trim(city)='' then 1 else 0 end) as city_missing,
sum(case when category is null or trim(category)='' then 1 else 0 end)as cat_missing,
sum(case when price is null or trim(price)='' then 1 else 0 end)as price_missing,
sum(case when quantity is null or trim(quantity)='' then 1 else 0 end)as quantity_missing,
sum(case when rating is null or trim(rating)='' then 1 else 0 end)as rating_missing,
sum(case when order_status is null or trim(order_status)='' then 1 else 0 end)as status_missing,
sum(case when customer_name is null or trim(customer_name)='' then 1 else 0 end)as cust_name_missing
from ecommerce_orders_cleaned;*/

SELECT 
    SUM(CASE WHEN city IS NULL OR TRIM(city) = '' THEN 1 ELSE 0 END) AS city_missing,
    SUM(CASE WHEN category IS NULL OR TRIM(category) = '' THEN 1 ELSE 0 END) AS cat_missing,
    SUM(CASE WHEN price IS NULL OR TRIM(price) = '' THEN 1 ELSE 0 END) AS price_missing,
    SUM(CASE WHEN quantity IS NULL OR TRIM(quantity) = '' THEN 1 ELSE 0 END) AS quantity_missing,
    SUM(CASE WHEN rating IS NULL OR TRIM(rating) = '' THEN 1 ELSE 0 END) AS rating_missing,
    SUM(CASE WHEN order_status IS NULL OR TRIM(order_status) = '' THEN 1 ELSE 0 END) AS status_missing,
    SUM(CASE WHEN customer_name IS NULL OR TRIM(customer_name) = '' THEN 1 ELSE 0 END) AS cust_name_missing
FROM ecommerce_orders_cleaned;


-- 3.Email Issues;
select *
from ecommerce_orders_cleaned
where email not like '%@%.%';

-- 4.Phone Number Issues
select *
from ecommerce_orders_cleaned
where phone not like '^[0-9]';

-- 10 digit phone number
UPDATE ecommerce_orders_cleaned
SET phone = RIGHT(phone, 10)
WHERE CHAR_LENGTH(phone) > 10;


-- 5. Price Issues
select distinct price
from ecommerce_orders_cleaned

-- 6. Quantity Issues
select *
from ecommerce_orders_cleaned
where quantity <= 0 or quantity='';

-- 7.Rating Issues
select *
from ecommerce_orders_cleaned
where rating not between 1 and 5 or rating is null;

-- 8.Business logic
select *
from ecommerce_orders_cleaned
where order_date < delivery_date;

-- 9.date Format
select distinct order_date 
from ecommerce_orders_cleaned;

-- 10. date Format in delivery date
select distinct delivery_date
from ecommerce_orders_cleaned;

select * from ecommerce_orders_cleaned;