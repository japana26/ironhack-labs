CREATE DATABASE Apple;
CREATE TABLE AppleStore (
    id INT,
    track_name VARCHAR(50),
    size_bytes INT,
    currency VARCHAR(50),
    price DECIMAL(10),
    rating_count_tot INT,
    rating_count_ver INT,     
	user_rating DECIMAL(10),      
    user_rating_ver DECIMAL(10), 
	ver DECIMAL(10),
    cont_ratin VARCHAR(50),
    prime_genre VARCHAR(50),
    sup_devices INT,
	ipadSc_urls INT,
    lang_num INT,
	vpp_lic INT);

SELECT * FROM applestore
ORDER BY price DESC
LIMIT 5;

SELECT AVG(rating_count_tot)
FROM (SELECT * FROM applestore
ORDER BY price DESC
LIMIT 5)SUMMARY;

SELECT * FROM applestore;

SELECT COUNT(price)
FROM (SELECT * FROM applestore
WHERE currency = 'USD')SUMMARY
WHERE price =0;

create temporary table apple_usd
select *
from applestore
where currency = 'USD';
select * from apple_usd;