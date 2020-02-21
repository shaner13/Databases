alter session  set current_schema = SRiedy;

DESCRIBE POBYRNE.M_Movies;
SELECT * FROM POBYRNE.M_MOVIES;

--1
SELECT MTITLE FROM POBYRNE.M_MOVIES;

--2
SELECT DISTINCT Genre FROM POBYRNE.M_Movies;

--3
SELECT Genre, COUNT(*) 
FROM POBYRNE.M_Movies 
GROUP BY Genre;

--4
SELECT Genre,
MAX(Running_time), MIN(Running_Time) 
FROM POBYRNE.M_Movies 
GROUP BY Genre;

--5
SELECT Genre, COUNT(*)"Movies between 90 and 180 minutes"
FROM POBYRNE.M_Movies
WHERE Running_Time BETWEEN 90 AND 180 
GROUP BY Genre;

--6
Select Genre, Rating, COUNT(*) "Number Of Movies"
FROM POBYRNE.M_Movies
GROUP BY Genre, Rating;

--7
SELECT Rating "Average over 66M"
FROM M_Movies
GROUP BY Rating
HAVING avg(Box_Office) > 66;
