select * from amazon_products
select count(*) as total_products from amazon_products;

select product_name,category from amazon_products;
select product_name,rating
from amazon_products
where rating > 4.5;

select product_name,discount_percentage
from amazon_products
where discount_percentage > 50;

select round(avg(rating),2) as average_rating from amazon_products;

select max(rating) as highest_rating from amazon_products;

select min(rating) as lowest_rating from amazon_products;

select round(avg(discounted_price),2) as Average_Discounted_Price from amazon_products;

select round(avg(actual_price),2) as average_actual_price from amazon_products;

select product_name,rating from amazon_products order by rating desc limit 10;

select product_name,actual_price from amazon_products order by actual_price desc limit 10;

select product_name,discount_percentage from amazon_products order by discount_percentage desc limit 10;

select product_name,rating_count from amazon_products order by rating_count desc limit 10;

select product_name,discount_percentage from amazon_products order by discount_percentage asc limit 10;

SELECT category,
COUNT(*) AS Total_Products
FROM amazon_products
GROUP BY category
ORDER BY Total_Products DESC;

SELECT category,
ROUND(AVG(rating),2) AS Avg_Rating
FROM amazon_products
GROUP BY category
ORDER BY Avg_Rating DESC;

SELECT category,
ROUND(AVG(actual_price),2) AS Avg_Price
FROM amazon_products
GROUP BY category;

SELECT category,
SUM(rating_count) AS Total_Reviews
FROM amazon_products
GROUP BY category
ORDER BY Total_Reviews DESC;

select product_name,rating from amazon_products where rating > (
select avg(rating) from amazon_products
); 

select product_name, discount_percentage from amazon_products where discount_percentage = (
select max(discount_percentage) from amazon_products);

select product_name, actual_price from amazon_products where actual_price > 10000;

select product_name,rating_count from amazon_products where rating_count > 100000;

select product_name, actual_price,rating from amazon_products where actual_price > 5000 and rating > 4.3;

select product_name,rating, case when rating >= 4.5 then 'Excellent' when rating >= 4 then 'Good' else 'Average' end as rating_levl from amazon_products;

select product_name,discount_percentage, case when discount_percentage >= 70 then 'Huge Discount' when discount_percentage >=40 then 'Medium Discount' else 'Low Discount' end as Discount_level from amazon_products limit 10;

select product_name,rating, rank () over (order by rating desc) as ranking from amazon_products;

select product_name, rating, dense_rank() over(order by rating desc) as ranking from amazon_products;

select product_name, rating, row_number() over(order by rating desc) as row_num from amazon_products;