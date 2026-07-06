-- Write your PostgreSQL query statement below
-- log doesn't work if dates aren't continous
-- select id
-- from (
--     select id, temperature,
--     lag(temperature) over(order by recorddate) as prev_temp
--     from weather
-- ) t
-- where temperature > prev_temp;

select w2.id
from weather w1
join weather w2
on w2.recorddate = w1.recorddate + interval '1' day
where (w2.temperature - w1.temperature) > 0;