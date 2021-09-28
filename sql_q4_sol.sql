-- 4. Write a SQL query to compute a list showing the number of substitutions that happened in various stages of play for the entire tournament.-- 
select play_stage, round(count(in_out)/2,2) 
from match_mast 
	join player_in_out 
	using(match_no) 
group by play_stage;

