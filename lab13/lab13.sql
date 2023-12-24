.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";


CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" AND pet = "dog";


CREATE TABLE smallest_int_having AS
  SELECT MIN(time), smallest FROM students GROUP BY smallest HAVING count(*) = 1;


CREATE TABLE matchmaker AS
  SELECT first.pet, first.song, first.color, second.color FROM students AS first, students AS second WHERE first.pet = second.pet AND first.song = second.song AND first.time < second.time;


CREATE TABLE sevens AS
  SELECT a.seven FROM students AS a, numbers AS b WHERE a.time = b.time AND a.number = 7 AND b."7" = "True";


CREATE TABLE avg_difference AS
  SELECT round(avg(abs(number - smallest))) FROM students;

