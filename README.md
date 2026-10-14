# Movie Database Analysis Using MySQL

## Project Overview
This project uses SQL to explore a movie database containing movie details and director information. The goal is to answer practical questions about movie popularity, revenue, ratings, and director performance.

## Tools Used
- MySQL
- SQL

## Database Tables
### `movies`
Contains movie-related fields such as:
- `id`
- `original_title`
- `title`
- `budget`
- `popularity`
- `release_date`
- `revenue`
- `vote_average`
- `vote_count`
- `director_id`

### `directors`
Contains director-related fields such as:
- `id`
- `name`
- `gender`
- `department`

The `movies.director_id` field is joined to `directors.id` to connect movies with their directors.

## SQL Concepts Practiced
- `SELECT` and `WHERE`
- `IN` and `LIKE`
- `COUNT()` and `MAX()`
- `ORDER BY` and `LIMIT`
- `JOIN` and `LEFT JOIN`
- `GROUP BY`
- Date filtering

## Questions Explored
1. How many movies are in the database?
2. Which directors are James Cameron, Luc Besson, and John Woo?
3. Which directors have names starting with “S”?
4. How many female directors are recorded in the dataset?
5. Who is the 10th female director when records are ordered by director ID?
6. What are the three most popular movies?
7. What are the three highest-revenue movies?
8. Which movie has the highest average vote among movies released from January 1, 2000 onward?
9. Which movie or movies were directed by Brenda Chapman?
10. Which director has made the most movies?
11. Which director has the highest-revenue movie?

## Example Queries

### Find the three most popular movies
```sql
SELECT original_title, popularity
FROM movies
ORDER BY popularity DESC
LIMIT 3;
```

### Find the three highest-revenue movies
```sql
SELECT original_title, revenue
FROM movies
ORDER BY revenue DESC
LIMIT 3;
```

### Find movies directed by Brenda Chapman
```sql
SELECT m.title
FROM movies AS m
JOIN directors AS d
  ON m.director_id = d.id
WHERE d.name = 'Brenda Chapman';
```

### Find the director with the most movies
```sql
SELECT d.name, COUNT(*) AS movie_count
FROM movies AS m
JOIN directors AS d
  ON m.director_id = d.id
GROUP BY d.id, d.name
ORDER BY movie_count DESC
LIMIT 1;
```

### Find the director whose single movie has the highest revenue
```sql
SELECT d.name, m.title, m.revenue
FROM movies AS m
JOIN directors AS d
  ON m.director_id = d.id
ORDER BY m.revenue DESC
LIMIT 1;
```

> **Note:** The last query identifies the director of the single highest-revenue movie. It does not calculate each director's total revenue across all their movies.

## Key Learnings
- Practiced writing SQL queries to answer data-related questions.
- Learned to combine related tables using joins.
- Used aggregate functions to summarize records.
- Sorted and filtered data to identify top results.
- Improved SQL problem-solving and data exploration skills.

## How to Run
1. Install or open MySQL.
2. Load the project database and its `movies` and `directors` tables.
3. Select the database:
   ```sql
   USE project_movie_database;
   ```
4. Open the SQL script in MySQL Workbench or your preferred SQL client.
5. Run the queries and review the results.

## Repository Contents
- `README.md` — project documentation
- `movie_analysis.sql` — add your SQL query script here

## Author
**Supraja**  
Aspiring Data Analyst

## Connect
- **GitHub:** Add your GitHub profile or repository URL
- **LinkedIn:** Add your LinkedIn profile URL
