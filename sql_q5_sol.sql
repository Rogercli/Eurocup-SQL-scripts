
-- 5. Write a SQL query to find the number of bookings that happened in stoppage time.-- 
select play_schedule, count(*) as number_of_bookings 
from player_booked 
where play_schedule='ST';

