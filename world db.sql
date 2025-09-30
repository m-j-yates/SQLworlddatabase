use world;

SELECT *
FROM Country;
select * 
from city;
select count(name)
from city
where CountryCode = 'USA';

select Name
from City
where Name LIKE '%New%';

select Name, population
from City
order by population DESC 
limit 10;

Select name, population 
from City
where Name like 'Be%';


Select name, population 
from City
where population between '500000' AND '1000000';

select Name 
from City 
order by name ASC;

select Name, population
from Country
order by population desc
limit 1;
 
select country.name, City.Name
from country 
join City
on country.capital = city.ID
where Country.name like 'Spain';

select city.Name, continent
from City
join Country
on country.capital = city.id
where continent like 'Europe';

select country.name, avg(country.population) as avg_population
from country 
Group by name;

select City.Name, city.population, country.Name
from country 
join City
on country.capital = city.ID
order by population DeSC;

select *
from city;

select country.Name, (country.Population/country.SurfaceArea) as Population_density
FROM country 
where (country.Population/country.SurfaceArea) <10
order by  Population_density;

select country.name, city.name, country.population, country.gnp, (country.gnp / country.population) as gdp_per_capita
from city
join country
on country.code = city.countryCode 
order by gdp_per_capita desc;

select city.name, city.population
from city
order by POPULATION DESC 
LIMIT 10 OFFSET 30; 



SELECT distinct Name, COUNT(Name)

FROM city

GROUP BY Name
order by Name asc;
 
 