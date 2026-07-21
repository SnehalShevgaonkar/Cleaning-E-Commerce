use cleaning_project_2;
-- 24 converts data type
alter table ecommerce_orders_cleaned
modify order_id int;

alter table ecommerce_orders_cleaned
modify email varchar(50);

alter table ecommerce_orders_cleaned
modify customer_name varchar(100),
modify phone varchar(20),
modify city varchar(20),
modify state varchar(20),
modify product_name varchar(20),
modify category varchar(40),
modify price decimal(10,2),
modify quantity int,
modify order_date date,
modify delivery_date date,
modify payment_method varchar(20),
modify order_status varchar(20),
modify rating int;



-- 24. describe table

describe ecommerce_orders_cleaned