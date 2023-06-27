SELECT SUM(city.population)
FROM city, country
WHERE country.continent = 'Asia' AND city.countrycode = country.code