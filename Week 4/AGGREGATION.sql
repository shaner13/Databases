alter session  set current_schema = POBYRNE;

DESCRIBE M_Movies;

--1
SELECT * FROM M_MOVIES;

--2
SELECT DISTINCT Genre FROM M_Movies;

--3
SELECT Genre, COUNT(*) 
FROM M_Movies 
GROUP BY Genre;


--4
SELECT Genre, COUNT(*)
SELECT MAX(Running_Time), 
FROM M_Movies;

SELECT Genre, COUNT(*)
SELECT MIN(Running_Time), 
FROM M_Movies;

GROUP BY Genre;
MAX MIN RUNNING_TIME

--5
SELECT COUNT(*)
FROM M_Movies
WHERE Running_Time > 90 < 180;

--6
Select Genre, Rating


--7
SELECT Rating, COUNT(*)
FROM M_Movies
WHERE Box_Office > 66;
