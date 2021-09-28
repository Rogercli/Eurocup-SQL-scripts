

-- 7. Write a SQL query to find all the venues where matches with penalty shootouts were played.--
select venue_name 
from soccer_venue 
	join match_mast 
	using(venue_id) 
where decided_by='P';
