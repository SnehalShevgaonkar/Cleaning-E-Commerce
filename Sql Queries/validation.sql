use 

-- 23.check duplicates

select order_id,count(*)
from ecommerce_orders_cleaned
group by order_id
having count(*)>1;



-- invalid email
select *
from ecommerce_orders_cleaned
where email not like '%@%.%';


-- quantity
select *
from ecommerce_orders_cleaned
where quantity <= 0 or quantity='';


-- rating

update ecommerce_orders_cleaned
set rating=1
where rating not  between 1 and 5