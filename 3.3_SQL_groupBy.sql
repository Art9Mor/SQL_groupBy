USE world;

--  все страны вместе с количеством городов
SELECT 
	countryCode AS country, 
	COUNT(name) AS citiesCount
FROM city
GROUP BY countryCode
ORDER BY citiesCount;

--  все страны вместе с количеством городов, оставить только страны, в которых не менее 2 городов
SELECT 
	countryCode AS country, 
	COUNT(name) AS citiesCount
FROM city
GROUP BY country
HAVING citiesCount >= 2
ORDER BY citiesCount DESC;

-- все страны вместе с количеством городов, в которых не менее 1 млн человек, оставить только страны, в которых не менее 2 таких городов
SELECT 
	countryCode AS country, 
    COUNT(name) AS citiesCount
FROM city
WHERE population >= 1000000
GROUP BY country
HAVING citiesCount >= 2
ORDER BY citiesCount DESC;

-- средняя численность населения городов по каждой стране, вывести в порядке убывания
SELECT 
	countryCode country, 
    name city, 
    AVG(population) averagePopulation 
FROM city
GROUP BY name, countryCode
ORDER BY averagePopulation DESC;