SELECT * FROM shark_tank_india;

-- season data?

select distinct `Season Number` from shark_tank_india;

--  In each season, how many episodes are there?

select `Season Number` , count(distinct `Episode Number`) AS NumberOfEpisodes
from shark_tank_india
group by `Season Number`;

--  In each season, how many episodes are there? and what is the total number of brands(Startups) that have visited in each Season of Shark Tank 

select `Season Number` , count(distinct `Episode Number`) AS NumberOfEpisodes ,  count(distinct `Startup Name`) AS Number_OfBrand_Visited
from shark_tank_india
group by `Season Number`;

-- count total number of Startups that have visited in shark tank

select count(`Startup Name`) from shark_tank_india;

-- Name the Startup in which all the sharks have invested 

select `Startup Name` 
from shark_tank_india
where `Number of sharks in deal` = 8 ;

-- What is the name of the startup in which nobody has invested

select `Startup Name` 
from shark_tank_india
where `Number of sharks in deal` = '' ;

-- Total Invested Amount in each season
 
SELECT * FROM shark_tank_india;

select `Season Number` , sum(`Total Deal Amount`) As Total_Invested_Amount_Bysharks
from shark_tank_india
group by `Season Number`;


-- Name the Startups that is based on app ideas.

select `Startup Name` , Industry , `Business Description` 
from shark_tank_india
where `Business Description` Like '%app%';

-- OR 
select *
from shark_tank_india
where `Business Description` Like '%app%';


-- Top startups Receiving Investment of at least 30  / Startups Receiving Investment(Total Deal Amount) of atleast 30 from sharks :

select `Startup Name` , `Total Deal Amount`
from shark_tank_india
where `Total Deal Amount`>=30;

-- Which industry sectors have the highest number of successful deals?

select Industry , count(`Total Deal Amount`)
from shark_tank_india
group by Industry
order by count(`Total Deal Amount`) desc 
limit 1;

-- oldest startup

select  `Startup Name` , `Started in` from shark_tank_india
where `Started in` = (
select min(`Started in`) from shark_tank_india);

-- Which entrepreneurs have received investments from multiple sharks

select `Pitch Number` , `Startup Name` , `Number of sharks in deal`
from shark_tank_india
where `Number of sharks in deal` > 1;


-- most entrepreneur are in what age

select `Pitchers Average Age` , count(`Pitchers Average Age`)
from shark_tank_india
group by `Pitchers Average Age`
order by count(`Pitchers Average Age`) desc
limit 1;

-- which company have the highest monthly sales

select `Pitch Number` , `Startup Name` 
from shark_tank_india
where `Monthly Sales` IN (
select max(`Monthly Sales`) from shark_tank_india);

-- mostly entrepreneur are from which state 

select `Pitchers State` , count(`Pitchers State`)
from shark_tank_india
group by `Pitchers State`
order by count(`Pitchers State`) desc
limit 1;



