

-- 13. Write a SQL query to find all the defenders who scored a goal for their teams.--
select distinct(player_name),posi_to_play
from player_mast 
join goal_details
using(player_id)
where posi_to_play in ('DF','FD');
