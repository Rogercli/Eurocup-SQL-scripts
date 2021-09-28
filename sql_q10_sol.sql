-- 10. Write a SQL query to find all available information about the players under contract to Liverpool F.C. playing for England in EURO Cup 2016.--

select *
from player_mast as p
	left join goal_details as g
	on p.player_id=g.player_id
	left join player_in_out as s
	on p.player_id=s.player_id
where playing_club='Liverpool'
order by player_name;

