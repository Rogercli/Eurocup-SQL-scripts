-- 20. Write a SQL query to find the substitute players who came into the field in the first half of play, within a normal play schedule.--

select player_name
from player_mast as p
	left join player_in_out as s
	on s.player_id=p.player_id
where s.play_schedule='NT' 
	and s.play_half=1 
	and in_out='I';
