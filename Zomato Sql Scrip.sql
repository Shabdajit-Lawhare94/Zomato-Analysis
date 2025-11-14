create database zomato_project;
use zomato_project;
SELECT * FROM main2 ;

#3. Convert the Average cost for 2 column into USD dollars (currently the Average cost for 2 in local currencies)
select average_cost_for_two+(80.50)as "USD dollars" from main2;

#4. Find the Numbers of Resturants based on City and Country.
select Countryname,city,count(restaurantID)as no_of_resturants from main2 group by Countryname,city;


#5.Numbers of Resturants opening based on Year , Month
select year,quarter,Monthname as month,
count(restaurantid)as "no. of restaurants" from main2
group by 
        year,
        quarter,
        monthname
order by 
		year,
        quarter,
		monthname ;

   
    
#6.Count of Resturants based on Average Ratings
select
case when rating <=1 then "0-1"
when rating <=2 then "1-2"
when rating <=3 then "2-3"
when rating <=4 then "3-4"
when rating <=5 then "4-5"
end rating_range,count(restaurantID)as no_of_restaurants from main2
group by rating_range
order by rating_range;

#7.Create buckets based on Average Price of reasonable size and find out how many resturants falls in each buckets
select case when price_range=1 then "0-500"
when price_range=2 then "500-1000"
when price_range=3 then "1001-5000"
when price_range=4 then ">45000"
end price_range,count(restaurantID)as no_of_restaurants from main2
group by price_range
order by price_range;

#8.Percentage of Resturants based on "Has_Table_booking"
select Has_Table_booking,(count(*)* 100/(select count(*)from main2))as "% of restaurants" from main2 group by Has_Table_booking;

#9.Percentage of Resturants based on "Has_Online_delivery"
select Has_Online_delivery,(count(*)*100/(select count(*)from main2))as "% of restaurants" from main2 group by Has_Online_delivery;






    
    
#6.Count of Resturants based on Average Ratings
select
case when rating <=1 then "0-1"
when rating <=2 then "1-2"
when rating <=3 then "2-3"
when rating <=4 then "3-4"
when rating <=5 then "4-5"
end rating_range,count(restaurantID)as no_of_restaurants from main2
group by rating_range
order by rating_range;

#7.Create buckets based on Average Price of reasonable size and find out how many resturants falls in each buckets
select case when price_range=1 then "0-500"
when price_range=2 then "500-1000"
when price_range=3 then "1001-5000"
when price_range=4 then ">45000"
end price_range,count(restaurantID)as no_of_restaurants from main2
group by price_range
order by price_range;

#8.Percentage of Resturants based on "Has_Table_booking"
select Has_Table_booking,(count(*)* 100/(select count(*)from main2))as "% of restaurants" from main2 group by Has_Table_booking;

#9.Percentage of Resturants based on "Has_Online_delivery"
select Has_Online_delivery,(count(*)*100/(select count(*)from main2))as "% of restaurants" from main2 group by Has_Online_delivery;






