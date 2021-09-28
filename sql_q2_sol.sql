
-- 2. Write a SQL query to find the number of matches that were won by penalty shootout.--
select count(*) as Decided_by_penalty 
from match_mast 
where decided_by='P';
