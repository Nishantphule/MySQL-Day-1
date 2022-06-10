Exercise 1 -
Task Queries-

1. SELECT title FROM movies;

2. SELECT director FROM movies;

3. SELECT director , TITLE FROM movies;

4. SELECT * FROM movies;


Exercise 2 -
Task Queries-

1. SELECT * FROM movies WHERE ID = 6;

2. SELECT * FROM movies WHERE YEAR BETWEEN 2000 AND 2010;

3. SELECT * FROM movies WHERE YEAR NOT BETWEEN 2000 AND 2010;

4. SELECT * FROM movies WHERE ID <=5;


Exercise 3 -
Task Queries-

1. SELECT * FROM movies WHERE TITLE LIKE "TOY STORY%";

2. SELECT * FROM movies WHERE DIRECTOR LIKE "John Lasseter";

3. SELECT * FROM movies WHERE DIRECTOR NOT LIKE "John Lasseter";

4. SELECT * FROM movies WHERE TITLE LIKE "WALL-_";


Exercise 4 -
Task Queries-

1. SELECT DISTINCT director FROM movies ORDER BY director ASC;

2. SELECT title, year FROM movies ORDER BY year DESC LIMIT 4;

3. SELECT title FROM movies ORDER BY title ASC LIMIT 5;

4. SELECT title FROM movies ORDER BY title ASC LIMIT 5 OFFSET 5;


Exercise 5 -
Task Queries-

1. SELECT CITY,POPULATION FROM north_american_cities WHERE COUNTRY LIKE "CANADA";

2. SELECT city, latitude FROM north_american_cities WHERE country = "United States" ORDER BY latitude DESC;

3. SELECT city, longitude FROM north_american_cities WHERE longitude < -87.629798 ORDER BY longitude ASC;

4. SELECT CITY, POPULATION FROM north_american_cities WHERE COUNTRY LIKE "MEXICO" ORDER BY POPULATION DESC LIMIT 2;

5. SELECT city, population FROM north_american_cities WHERE country LIKE "United States" ORDER BY population DESC LIMIT 2 OFFSET 2;


Exercise 6 -
Task Queries-

1. SELECT title, domestic_sales, international_sales 
   FROM movies
   JOIN boxoffice
   ON movies.id = boxoffice.movie_id;

2. SELECT title, domestic_sales, international_sales
   FROM movies
   JOIN boxoffice
   ON movies.id = boxoffice.movie_id
   WHERE international_sales > domestic_sales;

3. SELECT title, domestic_sales, international_sales
   FROM movies
   JOIN boxoffice
   ON movies.id = boxoffice.movie_id
   ORDER BY  RATING DESC;


Exercise 7 -
Task Queries-

1. SELECT DISTINCT BUILDING FROM employees;

2. SELECT CAPACITY,Building_name FROM BUILDINGS;

3. SELECT DISTINCT building_name, role 
   FROM buildings 
   LEFT JOIN employees 
   ON building_name = building;


Exercise 8 -
Task Queries-

1. SELECT * FROM employees WHERE BUILDING IS NULL;

2. SELECT DISTINCT building_name
   FROM buildings 
   LEFT JOIN employees
   ON building_name = building
   WHERE role IS NULL;


Exercise 9 -
Task Queries-

1. SELECT title, (domestic_sales + international_sales) / 1000000 AS TOTAL
   FROM movies
   JOIN boxoffice
   ON movies.id = boxoffice.movie_id;

2. SELECT title, rating * 10 AS rating_percent
   FROM movies
   JOIN boxoffice
   ON movies.id = boxoffice.movie_id;    

3. SELECT *
   FROM movies
   WHERE YEAR % 2 = 0   


Exercise 10 -
Task Queries-   

1. SELECT NAME,MAX (YEARS_EMPLOYED) FROM employees;

2. SELECT ROLE , AVG(YEARS_EMPLOYED) AS AVG FROM employees GROUP BY ROLE

3. SELECT building, SUM(years_employed) as Total_years_employed FROM employees GROUP BY building;


Exercise 11 -
Task Queries-

1. SELECT ROLE, COUNT(ROLE) AS COUNT FROM employees WHERE ROLE LIKE "ARTIST";

2. SELECT role, COUNT(*) FROM employees GROUP BY role;

3. SELECT ROLE, SUM(YEARS_EMPLOYED) AS COUNT FROM employees WHERE ROLE LIKE "ENGINEER";


Exercise 12 -
Task Queries-

1. SELECT Director,count(Director) as Number FROM movies GROUP by director;

2. SELECT director, SUM(domestic_sales + international_sales) as Total
   FROM movies
   INNER JOIN boxoffice
   ON movies.id = boxoffice.movie_id
   GROUP BY director;


Exercise 13 -
Task Queries-

1. INSERT INTO movies VALUES (4, "Toy Story 4", "El Directore", 2015, 90);

2. INSERT INTO Boxoffice VALUES (4, 8.7 ,34000000, 27000000);


Exercise 14 -
Task Queries-

1. UPDATE movies
   SET director = "John Lasseter"
   WHERE id = 2;

2. UPDATE movies
   SET Year = 1999
   WHERE id = 3;   

3. UPDATE movies
   SET Title = "Toy Story 3",
   Director = "Lee Unkrich"
   WHERE id = 11;  


Exercise 15 -
Task Queries-   

1. DELETE FROM movies where year < 2005;

2. DELETE FROM movies where Director = "Andrew Stanton";


Exercise 16 -
Task Queries-

1. CREATE TABLE Database (
   Name TEXT,
   Version FLOAT,
   Download_count INTEGER
   );


Exercise 17 -
Task Queries-

1. ALTER TABLE Movies
   ADD COLUMN Aspect_ratio 
   FLOAT DEFAULT 2.39;

2. ALTER TABLE Movies
   ADD COLUMN Language 
   TEXT DEFAULT English;


Exercise 18 -
Task Queries-

1. DROP TABLE Movies;

2. DROP TABLE Boxoffice;
