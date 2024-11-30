
-- create table icc_world_cup
-- (
-- Team_1 Varchar(20),
-- Team_2 Varchar(20),
-- Winner Varchar(20)
-- );
-- INSERT INTO icc_world_cup values('India','SL','India');
-- INSERT INTO icc_world_cup values('SL','Aus','Aus');
-- INSERT INTO icc_world_cup values('SA','Eng','Eng');
-- INSERT INTO icc_world_cup values('Eng','NZ','NZ');
-- INSERT INTO icc_world_cup values('Aus','India','India');

-- select * from icc_world_cup;

with san as (select team_1,winner,case WHEN team_1 = winner then 1 ELSE 0 end as points
from icc_world_cup 
union ALL
select team_2,winner,case WHEN team_2 = winner then 1 ELSE 0 end as points
from icc_world_cup )

select team_1,sum(points) as total_wins,count(*) as total_match
from san 
group by 1