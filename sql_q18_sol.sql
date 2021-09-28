-- 18. Write a SQL query to find the highest number of foul cards given in one match.--

select match_no, count(distinct(player_id)) as players_booked 
from player_booked as p
group by match_no
order by players_booked DESC;

