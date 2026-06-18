use zomato;
-- 1.Find top 2 most paying customers of each month
select *
from (
	select 
    sum(amount) as total_amount,
    user_id,
    month(date) as month_number,
    rank() over(partition by month(date)
		order by sum(amount) desc ) as rnk
    from orders
    group by user_id,month_number
)t
where rnk <= 2;