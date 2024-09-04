use company;

select product_id, sum(quantity)
from Orders
group by product_id;

select *
from Orders
where order_date >= adddate(curdate() , interval -7 day);

select Orders.order_id, (Orders.quantity * Products.price)
from Orders
join Products on Orders.product_id = Products.product_id;

select Orders.product_id, sum(Orders.quantity), Products.product_name
from Orders
join Products on Orders.product_id = Products.product_id
group by product_id
order by sum(quantity) desc
limit 3;

select Orders.product_id, sum(Orders.quantity * Products.price), Products.product_name
from Orders
join Products on Orders.product_id = Products.product_id
group by Orders.product_id;

select product_name, Products.product_id
from Products
left join Orders on Products.product_id = Orders.product_id
where Orders.product_id is null;

select month(order_date) as month_, count(order_id)
from Orders
where year(order_date) = '2023'
group by month_;

select *
from Orders 
where dayofweek(order_date) in (1,7);

select customer_id, count(customer_id)
from Orders
group by customer_id
having count(customer_id) > 5
order by count(customer_id) desc;

select customer_id, dayofyear(order_date)
from Orders
where dayofyear(order_date) <= 30;