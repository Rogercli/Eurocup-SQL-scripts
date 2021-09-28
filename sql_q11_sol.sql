-- 11. Write a SQL query to find the players, their jersey number, and playing club who were the goalkeepers for England in EURO Cup 2016..--
select player_name,jersey_no, playing_club
from player_mast
WHERE player_id in (select player_id 
                    from player_mast 
                    join soccer_country 
                    on team_id=country_id 
                    where posi_to_play='GK'
                    and country_name='England');
