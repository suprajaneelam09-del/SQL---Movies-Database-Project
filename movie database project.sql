show databases;

use project_movie_database;

show tables;

SELECT * FROM directors;

SELECT * FROM movies;

#	Can you get all data about movies? 

select * from movies;

#How do you get all data about directors?

select * from directors;

#Check how many movies are present in IMDB.

select count(original_title) from movies;

#Find these 3 directors: James Cameron ; Luc Besson ; John Woo

select * from directors
where name in('james cameron','luc besson','john woo');


#	Find all directors with name starting with S.

select * from directors
where name like 's%';

#Count female directors.

select count(gender) from directors
where gender=1;



select count(id) from directors;

select * from directors
where gender = 2;

#	Find the name of the 10th first women directors?
select name from directors
where gender=2
order by id
limit 1 offset 9;

#	What are the 3 most popular movies?

select original_title,popularity from movies
order by popularity desc
limit 3;


#	What are the 3 most bankable movies?

select original_title,revenue from movies
order by revenue desc
limit 3;

# What is the most awarded average vote since the January 1st, 2000?

select  original_title,vote_average,release_date from movies
where release_date >= ('2000-01-01')
order by vote_average desc
limit 1;

# Which movie(s) were directed by Brenda Chapman? 

select movies.title from movies
join directors
on movies.director_id=directors.id
where  directors.name ='Brenda Chapman';
 
 describe directors
 ;
 
 
 SELECT movies.title
FROM movies
JOIN directors
ON movies.director_id = directors.id
WHERE directors.name = 'Brenda Chapman';


SELECT directors.name, movies.title
FROM movies
JOIN directors
ON movies.director_id = directors.id
WHERE directors.name = 'Brenda Chapman';


select * from directors where name='Brenda Chapman';
select title from movies where uid=59803;


#	Which director made the most movies?

select movies.director_id,directors.name,count(director_id) from movies
 left join directors
 on movies.director_id=directors.id
 group by movies.director_id
 limit 1;
 
 
#	Which director is the most bankable?

select director_id ,directors.name,max(revenue) as most_bankable from movies
left join directors
on movies.director_id=directors.id
group by director_id
order by max(revenue) desc
limit 1;


