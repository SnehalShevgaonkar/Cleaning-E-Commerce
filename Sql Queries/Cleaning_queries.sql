
use cleaning_project_2; 
-- 11.Fix date format issue order_date

update ecommerce_orders_cleaned
set order_date=
case when order_date like '%,%,%' 
then str_to_date(order_date, '%d-%m-%Y')

when order_date like '%,%,%'
then str_to_date(order_date,'%Y/%m/%d')

when order_date regexp '^[A-Za-z]'
then str_to_date(order_date, '%M %d %Y')

else null
End;

-- 12.fix date format -delivery_date
update ecommerce_orders_cleaned
set delivery_date=
case
when delivery_date like '%,%,%' 
then str_to_date(trim(delivery_date), '%d-%m-%Y')

when delivery_date like '%,%,%'
then str_to_date(trim(delivery_date),'%Y-%m-%d')


else null
End; 
UPDATE ecommerce_orders_cleaned 
SET delivery_date = CASE 
    WHEN delivery_date LIKE '%-%-%' THEN STR_TO_DATE(delivery_date, '%d-%m-%Y') 
    WHEN delivery_date LIKE '%-%-%' THEN STR_TO_DATE(delivery_date, '%Y-%m-%d')
    ELSE delivery_date 
END;


select *
from ecommerce_orders_cleaned


-- 13 Remove duplicates
delete from ecommerce_orders_cleaned
where order_id in (
select order_id
from (
select order_id,row_number() over(partition by order_id order by order_date asc)as rn
from ecommerce_orders_cleaned)t
where rn>1
);

-- 14. Replace emplty values in order_date.

update ecommerce_orders_cleaned
set order_date=date_add(delivery_date, interval -5 DAY)
where order_date is null;

-- 15.clean name

update ecommerce_orders_cleaned
set customer_name=concat(upper(left(customer_name,1)),lower(substring(trim(customer_name),2)))

-- 16. clean emails

update ecommerce_orders_cleaned
set email=lower(email);

--  Delete email which are not in proper format
delete from ecommerce_orders_cleaned
where email not like '%@%.%';

-- 17. clean phone number

update ecommerce_orders_cleaned
set phone=regexp_replace(phone,'[^0-9]','');

-- 18.clean city
update ecommerce_orders_cleaned
set city=upper(trim(city));

-- 19.Standerdize category
update ecommerce_orders_cleaned
set category=upper(trim(category));

-- 20.clean price
update ecommerce_orders_cleaned
set price=regexp_replace(price,'[^0-9]','');

-- 21.fix quantity
update ecommerce_orders_cleaned
set quantity=1
where quantity is null or quantity <=0;

-- 22. fix rating
update ecommerce_orders_cleaned
set rating=1
where rating not  between 1 and 5

