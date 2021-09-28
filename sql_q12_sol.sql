-- 12. Write a SQL query that returns the total number of goals scored by each position on each country’s team. Do not include positions which scored no goals.--
with goals as (
	select goal_id, g.team_id, posi_to_play 
	from goal_details as g 
	join player_mast as p 
	using(player_id) 
	order by g.team_id)
	
	
select country_name, posi_to_play as position, count(goal_id) as total_goals 
from goals 
	left join soccer_country 
	on team_id=country_id 
group by country_name, posi_to_play;

