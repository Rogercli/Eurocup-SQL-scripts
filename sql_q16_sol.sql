


-- 16. Write a SQL query to find referees and the number of matches they worked in each venue.--

select referee_name, venue_name,count(distinct(match_no)) as num_matches
from referee_mast as r
	left join match_mast as m
	on r.referee_id=m.referee_id
	left join soccer_venue as v
	on v.venue_id=m.venue_id
group by referee_name,venue_name
order by num_matches;
