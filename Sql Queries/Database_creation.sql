create database cleaning_project_2;

use cleaning_project_2;
create table ecommerce_orders_dirty(
    order_id varchar(20),
    customer_name varchar(40),
    email varchar(40),
    phone varchar(40),
    city varchar(40),
    state varchar(40),
    product_name varchar(40),
    categoty varchar(40),
    price varchar(20),
    quantity varchar(20),
    order_date varchar(20),
    delivery_date varchar(20),
    payment_method varchar(20),
    status varchar(20),
    ratings varchar(20)
);




create table ecommerce_orders_cleaned
as
select *
from ecommerce_orders_dirty;

select * from ecommerce_orders_cleaned;