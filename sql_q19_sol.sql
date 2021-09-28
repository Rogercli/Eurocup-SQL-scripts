-- 19. Write a SQL query to find the number of captains who were also goalkeepers.--

select count(*) as num_captains
from match_captain as c
	join player_mast as p
	on c.player_captain=p.player_id
where posi_to_play='GK';
