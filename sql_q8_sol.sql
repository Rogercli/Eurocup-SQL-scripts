-- 8. Write a SQL query to find the match number for the game with the highest number of penalty shots, and which countries played that match.--
with penalty_score as (
select d.match_no,sum(penalty_score) as total_penalty 
from match_mast as m  
	join match_details as d 
	on m.match_no=d.match_no 
where d.decided_by='P'
group by d.match_no)

select d.match_no, c.country_name, total_penalty 
from penalty_score as p 
	left join match_details as d 
	on p.match_no=d.match_no 
	left join soccer_country as c 
	on d.team_id=c.country_id
order by total_penalty DESC
limit 2;
