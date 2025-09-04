SELECT name,area FROM cities WHERE area>4000

SELECT name,area FROM cities WHERE area>4000;

SELECT name,area FROM cities WHERE area=8223;

SELECT name,area FROM cities WHERE area!=8223;
SELECT name,area FROM cities WHERE area<>8223;

SELECT name,area FROM cities WHERE area between 2000 AND 5000;

SELECT name,area FROM cities WHERE name in('DElhi');

SELECT name,area FROM cities WHERE name NOT IN ('DElhi');

SELECT name,area FROM cities WHERE area NOT IN (8223) and name='Tokyo';

