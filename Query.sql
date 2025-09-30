Select * from plays;

---Query to make data for the graphs
select (60-(CAST(game_seconds_remaining AS FLOAT)/60)) AS game_time, week,away_wp_post as wp_post, away_team as team, 'away' as type
from plays
where away_team = 'GB' and away_wp_post != ''
union all
select (60-(CAST(game_seconds_remaining AS FLOAT)/60)) AS game_time, week,home_wp_post as wp_post, home_team as team, 'home' as type
from plays
where home_team = 'GB' and home_wp_post != '';


---Data for excitingness
select abs(.5-avg(home_wp_post)) as excitingness, week
from plays
group by week
order by excitingness asc;