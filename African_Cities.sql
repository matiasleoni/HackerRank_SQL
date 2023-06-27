SELECT city.name
FROM city, country
WHERE country.continent = 'Africa' AND city.countrycode = country.code