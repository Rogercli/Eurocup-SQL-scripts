

-- 15. Write a SQL query to find the referees who booked the most number of players.--

select count(distinct(player_id)) as players_booked, referee_name 
from referee_mast as r 
	left join match_mast as m 
	on r.referee_id=m.referee_id
	left join player_booked as p
	on p.match_no=m.match_no
group by referee_name 
order by players_booked DESC 
limit 5;
