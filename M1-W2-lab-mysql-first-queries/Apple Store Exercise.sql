SELECT * FROM apple2.applestore;
SELECT DISTINCT prime_genre FROM applestore;                           /*1. Which are the different genres?*/
SELECT * FROM applestore ORDER BY rating_count_tot DESC LIMIT 5;       /*2. Which is the genre with more apps rated?*/
SELECT prime_genre, count(track_name) FROM applestore GROUP BY prime_genre ORDER BY count(*) DESC LIMIT 1;   /*3. Which is the genre with more apps?*/
SELECT prime_genre, count(track_name) FROM applestore GROUP BY prime_genre ORDER BY count(*) LIMIT 1;        /*4. Which is the genre with less?*/
SELECT * FROM applestore ORDER BY rating_count_tot DESC LIMIT 10;       /*5. Take the 10 apps most rated.*/
SELECT * FROM applestore ORDER BY user_rating DESC LIMIT 10;            /*6. Take the 10 apps best rated by users.*/
CREATE TEMPORARY TABLE question_10 SELECT track_name, rating_count_tot, user_rating FROM applestore ORDER BY user_rating DESC LIMIT 3;  
SELECT * FROM question_10 ORDER BY rating_count_tot DESC;               /*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT price, rating_count_tot, user_rating FROM applestore WHERE price >0 ORDER BY rating_count_tot DESC;                /*11. Checking the total ratings & price*/
SELECT count(rating_count_tot) FROM (SELECT price, rating_count_tot, user_rating FROM applestore WHERE price >0 ORDER BY rating_count_tot DESC)SUMMARY;  /*11. Checking the count of total ratings & non free apps*/ 
SELECT price, rating_count_tot, user_rating FROM applestore WHERE price = 0 ORDER BY rating_count_tot DESC;               /*11. Checking the total ratings & free apps*/ 
SELECT count(rating_count_tot) FROM (SELECT price, rating_count_tot, user_rating FROM applestore WHERE price = 0 ORDER BY rating_count_tot DESC)SUMMMARY; /*11. Checking the count of total ratings & free apps*/ 