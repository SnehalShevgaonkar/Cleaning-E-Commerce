use  cleaning_project_2;

select order_id
from ecommerce_orders_cleaned;

select count(order_id)
from ecommerce_orders_cleaned
-- group by order_id;

update ecommerce_orders_cleaned
set delivery_date='2024-03-15'
where order_id in(7,9,11,12,20,21,25,26,30,32,35,39,41,42,48,49,52,54,55,59,61,65,72,74,75,90,91,94,97,101,103,104,107,110,112,114,115,116,119,121,124,127,129,136,142,143,144);

select order_id,delivery_date
from ecommerce_orders_cleaned
where delivery_date is null;

update ecommerce_orders_cleaned
set delivery_date='2024-03-20'
where order_id in(33,118);
