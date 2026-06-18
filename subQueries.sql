use movies;
select * from movies;

-- find movie with highest profit (vs order by)
select name, (gross - budget) as profit
from movies
order by profit desc limit 1;

-- find how many movies have rating > the avg of all the movies ratings(Find count of the above avg 
-- movies)
select 
    count(*) as avg_count
from movies.movies
where score > (select avg(score) from movies.movies);

-- find the highest rated movie of 2000
select *
from movies
where year = 2000 
and score = (select max(score) from movies where year = 2000);

-- 4. Find the highest rated movie among all movies whose number of votes are > the dataset avg votes.
select *
from movies
where votes > (select avg(votes) from movies)
order by score desc limit 1;

