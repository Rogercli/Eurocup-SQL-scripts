


-- 17. Write a SQL query to find the country where the most assistant referees come from and the count of the assistant referees--

select country_name,count(ass_ref_id) as ref_by_country, 
	(select count(distinct (ass_ref_id)) 
	from asst_referee_mast) as total_ass_ref
from asst_referee_mast as r
	left join soccer_country as c
	on r.country_id=c.country_id
group by country_name
order by ref_by_country DESC;
