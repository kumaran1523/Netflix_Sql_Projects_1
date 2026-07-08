-- Netflix project
DROP TABLE IF EXISTS netflix;

CREATE TABLE netflix
(
	show_id VARCHAR(6),
	type VARCHAR(10),
	title VARCHAR(150),
	director VARCHAR(250),
	casts VARCHAR(1000),
	country VARCHAR(150),
	data_added VARCHAR(50),
	release_year INT,
	rating VARCHAR(10),
	duration VARCHAR(20),
	listed_in VARCHAR(100),
	description VARCHAR(300)
);

SELECT * FROM netflix;

--15 Business problems

--1. Count the number of movies and TV shows

select type,count(*) as total_content
from netflix
group by type;

--2. Find the most common rating for movies and TV shows

SELECT 
	type,
	rating
FROM
(
	SELECT
		type,
		rating,
		COUNT(*),
		RANK() OVER(PARTITION BY type ORDER BY COUNT(*) DESC) as ranking
	FROM netflix
	GROUP BY 1,2
)as t1
WHERE ranking=1
	
--3. List all movie released in a specific year(eg.,2020)

SELECT * FROM netflix
WHERE 
	type='Movie' and
	release_year=2020

--4. Find the top 5 countries with the most content on netflix

select 
	unnest(string_to_array(country,',')) as new_country,
	count(show_id) as total_content
from netflix 
group by 1


--5. Identify the longest movie

select * from netflix
where type='Movie' and duration=(select max(duration) from netflix);

--6 Find content added in the last 5 years

select * from netflix
where 
	TO_DATE(data_added,'Month DD,YYYY') >= current_date - interval '5 years';

--7. Find all the movies/TV shows by director 'rajiv Chilaka'.

select * from netflix
where director like '%Rajiv Chilaka%';

--8. List all Tv shows with more than 5 seasons

select *
from netflix
where 
	type='TV Show'
	and
	SPLIT_PART(duration,' ',1)::numeric>5;

--9. Count the number of content items in each genre

select
	listed_in,show_id,
	unnest(string_to_array(listed_in,',')) as genre
from netflix;

--10. Find each year and the average number of content release in India on netflix.
--return top 5 year with highest avg content release

select 
	EXTRACT(YEAR FROM TO_DATE(data_added,'Month DD, YYYY')) AS year,
	COUNT(*),
	ROUND
	(
	COUNT(*)::numeric/(SELECT COUNT(*) FROM netflix where country='India')*100
	)as avg_content_per_year
from netflix
where country='India' 
GROUP BY 1;

--11. List all movies that are documentaries

select * from netflix
where listed_in like '%Documentaries%';

--12. Find all content without a director

select * from netflix
where director is null;

--13. Find how many movies actor 'Salman khan' appeared in last 10 years!

select * from netflix 
where casts like '%Salman Khan%'
and release_year > extract(year from current_date) - 10;

--14. Find the top 10 actors who have appeared in the highest number of movies produced in india.

select 
	unnest(string_to_array(casts,',')) as actors,
	count(*) as total_content
from netflix
where country like '%India%'
group by 1
order by 2 desc
limit 10

--15. Categories the content based on the presence of the keywords 'kill' and 'violence' in the description field. 
-- label content containing these keywords as 'Bad' and all othercontent as 'Good'.
-- Count how many item fall into each category.

with new_table as
(
select 
	CASE
	WHEN 
		description like '%kill%' or 
		description like '%violence%'THEN 'Bad Content'
		ELSE 'Good Content'
	END as category
from netflix
)

select 
	category,
	count(*) as total_content
from new_table
group by 1




















