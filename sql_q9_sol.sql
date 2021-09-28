-- 9. Write a SQL query to find the goalkeeper’s name and jersey number, playing for Germany, who played in Germany’s group stage matches.--
select player_name,jersey_no
from player_mast
where posi_to_play='GK' 
	and team_id='1208' 
	and player_id 
	in (select player_gk 
    	    from match_details 
    	    where play_stage='G');

