SELECT * FROM shartankindiaallpitches;

-- Episode data

select distinct `Episode Number` from shartankindiaallpitches;

-- brands 

select Brand from shartankindiaallpitches;

-- count total number of brands that have visited in shark tank

select count(Brand) from shartankindiaallpitches;

-- the number of brands that appeared on Shark Tank per episode.

select `Episode Number` , count(brand)
from shartankindiaallpitches
group by `Episode Number`;

-- In each season, how many episodes are there, and what is the total number of brands that visited in each Season Shark Tank 

select Season , count(distinct `Episode Number`),count(Brand)
from shartankindiaallpitches 
group by Season;

-- 

select Season , count(distinct `Episode Number`) AS NumberOfEpisodes , count(Brand) AS Number_OfBrand_Visited
from shartankindiaallpitches 
group by Season;

-- How many brands has Anupam invested in [Name the brand] 

select Brand
from shartankindiaallpitches
where Anupam = 'Y';

SELECT * FROM shartankindiaallpitches;

-- How many brands has Ashneer invested in [Name the brand] 

select Brand
from shartankindiaallpitches
where Ashneer = 'Y';

-- How many brands has Vineeta invested in [Name the brand]

select Brand
from shartankindiaallpitches
where Vineeta = 'Y';

-- Name the brand in which all the sharks have invested 

Select Brand
from shartankindiaallpitches
where Anupam = 'Y' AND Ashneer = 'Y' AND Namita = 'Y' AND Aman = 'Y' AND Peyush = 'Y' AND Vineeta = 'Y' AND Ghazal = 'Y';


-- What is the name of the brand in which nobody has invested

Select Brand
from shartankindiaallpitches
where Anupam = 'N' AND Ashneer = 'N' AND Namita = 'N' AND Aman = 'N' AND Peyush = 'N' AND Vineeta = 'N' AND Ghazal = 'N';

-- which brand has the highest Investment

select *
from shartankindiaallpitches
where `Pitch Number` = (
select `Pitch Number`
from shartankindiaallpitches
group by `Pitch Number`
order by max(`Investment Amount (In Lakhs INR)`) desc
limit 1);

-- Total Invested Amount in each season 

select Season , sum(`Investment Amount (In Lakhs INR)`)
from shartankindiaallpitches
group by Season;

-- Name the brands that is based on app ideas.

select Brand , Idea
from shartankindiaallpitches
where Idea Like '%app%';

-- Top Brands Receiving Investment of at least 20lakhs : 

select `Pitch Number`,Brand , Idea ,`Investment Amount (In Lakhs INR)`
FROM shartankindiaallpitches
where `Investment Amount (In Lakhs INR)` >= 20
order by `Investment Amount (In Lakhs INR)` asc;

-- Average Investment Amount For Each Episode Forecast

select `Episode Number` , avg(`Investment Amount (In Lakhs INR)`)
from shartankindiaallpitches
group by `Episode Number`;

-- Average Investment Amount For Each Episode Forecast having average greater than 20 

select `Episode Number` , avg(`Investment Amount (In Lakhs INR)`)
from shartankindiaallpitches
group by `Episode Number`
having avg(`Investment Amount (In Lakhs INR)`)>20;

-- Top 5 Brands Receiving Investment of at least 70lakhs : 

select `Pitch Number`,Brand , Idea ,`Investment Amount (In Lakhs INR)`
FROM shartankindiaallpitches
where `Investment Amount (In Lakhs INR)` >= 70
order by `Investment Amount (In Lakhs INR)` desc
limit 5;

-- Which brand is it in which  Vineeta and Namita and Ghazal have invested

select *
from shartankindiaallpitches
where Vineeta = 'Y' AND Namita = 'Y' AND Ghazal='Y';

-- Which brand is it in which  Anupam , Ashneer ,Peyush , Aman   have invested

select *
from shartankindiaallpitches
where Anupam = 'Y' AND Ashneer = 'Y' AND Aman='Y' AND Peyush = "Y";


-- Which brand is it in which  Anupam , Ashneer ,Peyush , Aman   have invested and Ghazal , Namita , Vineeta have not invested 

select *
from shartankindiaallpitches
where Anupam = 'Y' AND Ashneer = 'Y' AND Aman='Y' AND Peyush = "Y" AND  Vineeta = 'N' AND Namita = 'N' AND Ghazal='N';

-- In how many brands has Aman invested (count)

select count(Aman)
from shartankindiaallpitches
where Aman = 'Y';






