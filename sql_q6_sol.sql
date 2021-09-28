-- 6. Write a SQL query to find the number of matches that were won by a single point, but do not include matches decided by penalty shootout.-- 
with goals_scored as (
	select match_no,SUBSTRING_INDEX(goal_score,'-',1) 
		as team1_goal,
		SUBSTRING_INDEX(reverse(goal_score),'-',1) 
		as team2_goal 
	FROM match_mast 
	where decided_by='N' 
		and results='WIN')

select count(*) as number_of_games, abs(team1_goal-team2_goal) as point_difference 
from goals_scored 
group by point_difference 
limit 1;
