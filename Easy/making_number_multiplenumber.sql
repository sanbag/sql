-- create table numbers (n int);
-- insert into numbers values (1),(2),(3),(4),(5)


SELECT a.n
from numbers a
cross JOIN numbers b
where a.n>=b.n
ORDER BY 1