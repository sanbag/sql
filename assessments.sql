-- create table assessments
-- (
-- id int,
-- experience int,
-- sql int,
-- algo int,
-- bug_fixing int
-- )


-- insert into assessments values 
-- (1,3,100,null,50),
-- (2,5,null,100,100),
-- (3,1,100,100,100),
-- (4,5,100,50,null),
-- (5,5,100,100,100)


select experience,
       sum(case when (sql is null or sql=100) and (algo is null or algo=100) and (bug_fixing is null or bug_fixing=100) then 1 else 0 end) as max_score_students,
       count(*) as total_students
from assessments
group by experience;