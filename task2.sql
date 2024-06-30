CREATE DATABASE task2
GO

CREATE SCHEMA answer
GO

USE task2
GO

CREATE TABLE actor (
	act_id int PRIMARY KEY,
	act_fname CHAR(20),
	act_lname CHAR(20),
	act_gender CHAR(1)
);

CREATE TABLE director (
	dir_id INT PRIMARY KEY,
	dir_fname CHAR(20),
	dir_lname CHAR(20),
);

CREATE TABLE genres (
	gen_id INT PRIMARY KEY,
	gen_title CHAR(20)
);


CREATE TABLE reviewer (
	rev_id INT PRIMARY KEY,
	rev_name CHAR(50)
);


CREATE TABLE movie (
	mov_id INT PRIMARY KEY,
	mov_title CHAR(50),
	mov_year INT,
	mov_time INT,
	mov_lang CHAR(50),
	mov_dt_rel DATE,
	mov_rel_country CHAR(5)
);

CREATE TABLE movie_direction (
	dir_id INT,
	mov_id INT,
	FOREIGN KEY (dir_id)
	REFERENCES director(dir_id)
	ON DELETE CASCADE ON UPDATE CASCADE, 
	FOREIGN KEY (mov_id)
	REFERENCES movie(mov_id)
	ON DELETE CASCADE ON UPDATE CASCADE, 
);

CREATE TABLE movie_genres (
	mov_id INT,
	gen_id INT,
	FOREIGN KEY (mov_id)
	REFERENCES movie(mov_id)
	ON DELETE CASCADE ON UPDATE CASCADE, 
	FOREIGN KEY (gen_id)
	REFERENCES genres(gen_id)
	ON DELETE CASCADE ON UPDATE CASCADE, 
);

CREATE TABLE movie_cast (
	act_id INT,
	mov_id INT,
	role CHAR(30),
	FOREIGN KEY (mov_id)
	REFERENCES movie(mov_id)
	ON DELETE CASCADE ON UPDATE CASCADE, 
	FOREIGN KEY (act_id)
	REFERENCES actor(act_id)
	ON DELETE CASCADE ON UPDATE CASCADE, 
);

CREATE TABLE rating (
	mov_id INT,
	rev_id INT,
	rev_stars INT,
	num_o_ratings INT,
	FOREIGN KEY (mov_id)
	REFERENCES movie(mov_id)
	ON DELETE CASCADE ON UPDATE CASCADE, 
	FOREIGN KEY (rev_id)
	REFERENCES reviewer(rev_id)
	ON DELETE CASCADE ON UPDATE CASCADE, 
);