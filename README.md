# SQL Queries for Movie Database Analysis: Advanced Joins and Aggregations

This document contains a collection of SQL queries focusing on mastering SQL Joins. The database used for this practice is inspired by IMDb, consisting of movies, directors, and actors. The database covers the following requirements:  
- A movie can have more than one actor and vice versa.  
- A movie can have more than one director and vice versa.  

![image](https://github.com/user-attachments/assets/47c2bc80-64c4-4fec-aaca-dbfa2bad93db)


### Database Details  
- **movie_cast**: Junction table representing many-to-many relationships between `movie` and `actor` and their roles in the movies.  
- **movie_director**: Junction table representing many-to-many relationships between `movie` and `director`.  

**Note:**  
Actors in the database have acted in at least one movie, whereas some directors might not have directed any movies in the given dataset.  

---

## Queries  

### 1. Get All Movies and Their Casts  
Retrieve all movies along with their `actor_id`s.  

#### Notes:  
- Sort the results by `movie_name` (ascending) and `actor_id` (ascending).  

#### Expected Output Format:  
| movie_name | actor_id |  
|------------|----------|  
| ...        | ...      |  

---

### 2. Count Movies for "Daniel Radcliffe"  
Get the total number of movies in which **Daniel Radcliffe** has acted.  

#### Expected Output Format:  
| no_of_movies |  
|--------------|  
| ...          |  

---

### 3. Number of Movies for Each Actor  
Retrieve the total number of movies each actor has been cast in.  

#### Notes:  
- Sort the results by `actor_name` (ascending).  

#### Expected Output Format:  
| actor_name  | no_of_movies |  
|-------------|--------------|  
| ...         | ...          |  

---

### 4. Actors in at Least 5 Movies  
Retrieve the actors who have acted in at least 5 movies.  

#### Notes:  
- Sort the results by `actor_name` (ascending).  

#### Expected Output Format:  
| actor_name  | no_of_movies |  
|-------------|--------------|  
| ...         | ...          |  

---

### 5. Number of Movies Directed by Each Director  
Retrieve the number of movies directed by each director.  

#### Notes:  
- Include directors who have not directed any movies (count as 0).  
- Sort by `no_of_movies` (descending) and `director_name` (ascending).  

#### Expected Output Format:  
| director_name | no_of_movies |  
|---------------|--------------|  
| ...           | ...          |  

---

### 6. Directors with at Least 2 Movies Rated Above 6  
Retrieve the IDs of directors who have directed at least 2 movies with a rating greater than 6.  

#### Notes:  
- Sort by `no_of_movies` (descending) and `director_id` (ascending).  

#### Expected Output Format:  
| director_id | no_of_movies |  
|-------------|--------------|  
| ...         | ...          |  

---

### 7. Directors with at Least 2 Movies with Profit ≥ 50 Crores  
Retrieve the IDs of directors who have directed at least 2 movies with a profit of at least 50 crores.  

#### Notes:  
- Profit = `collection - budget`.  
- Sort by `no_of_movies_with_atleast_profit_50_cr` (descending) and `director_id` (ascending).  

#### Expected Output Format:  
| director_id | no_of_movies_with_atleast_profit_50_cr |  
|-------------|---------------------------------------|  
| ...         | ...                                   |  

---

### 8. Directors with at Least 2 Movies and Avg Profit > 50 Crores  
Retrieve the IDs of directors who have directed at least 2 movies and have an average profit greater than 50 crores.  

#### Notes:  
- Profit = `collection - budget`.  
- Sort by `no_of_movies` (descending) and `director_id` (ascending).  

#### Expected Output Format:  
| director_id | no_of_movies | avg_profit |  
|-------------|--------------|------------|  
| ...         | ...          | ...        |  

---

### 9. Directors with Avg Rating > 8 for at Least 2 Movies  
Retrieve the IDs of directors who have directed at least 2 movies with an average rating greater than 8.  

#### Notes:  
- Sort by `no_of_movies` (descending) and `director_id` (ascending).  

#### Expected Output Format:  
| director_id | no_of_movies | avg_rating |  
|-------------|--------------|------------|  
| ...         | ...          | ...        |  

---

### 10. Actors in Harry Potter Movies  
Retrieve the distinct names of actors who acted in any of the Harry Potter movies.  

#### Notes:  
- Consider movie names containing "Harry Potter".  
- Sort by `actor_name` (ascending).  

#### Expected Output Format:  
| actor_name |  
|------------|  
| ...        |  

---

### 11. Directors of Harry Potter Movies  
Retrieve the distinct names of directors who directed any of the Harry Potter movies.  

#### Notes:  
- Consider movie names containing "Harry Potter".  
- Sort by `director_name` (ascending).  

#### Expected Output Format:  
| director_name |  
|---------------|  
| ...           |  
