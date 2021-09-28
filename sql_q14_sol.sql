-- 14. Write a SQL query to find referees and the number of bookings they made for the entire tournament. Sort your answer by the number of bookings in descending order--

select referee_name, count(*) as num_bookings
from match_mast
	left join player_booked
	using(match_no)
	left join referee_mast
	using(referee_id)
group by referee_name
order by num_bookings DESC;
