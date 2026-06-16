-- find all profitable orders
select order_id, sum(profit) as total_profit 
from daraz.order_details
group by order_id
having sum(profit) > 0;

-- find customer who has placed max number of orders
select count(t1.order_id) as total_orders,t2.name, t1.user_id
from daraz.orders t1
join daraz.users t2
	on t1.user_id = t2.user_id
group by t1.user_id, t2.name
order by total_orders desc;

-- most profitable category
select category_id,sum(profit) as total_profit 
from daraz.order_details
group by category_id
order by total_profit desc
limit 1;

-- which is the most profitable state
select sum(t1.profit) as total_profit, t3.state
from daraz.order_details t1
join daraz.orders t2
on t1.order_id = t2.order_id
join daraz.users t3
on t2.user_id = t3.user_id
group by t3.state
order by total_profit desc
limit 1;

-- find all categories with profit higher than 5000
select sum(profit) as total_profit, category_id
from daraz.order_details
group by category_id
having total_profit > 5000;



