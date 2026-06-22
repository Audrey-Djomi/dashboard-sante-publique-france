# la requête pour ressortir les 10 première ligne de notre TABLE

SELECT *
FROM covid_hospitalisations
LIMIT 10;

# requête pour ressortir les départements qui ont reçu le plus d horpitalisations suite au covid 

SELECT dep,
       MAX(hosp) AS max_hosp
FROM covid_hospitalisations
GROUP BY dep
ORDER BY max_hosp DESC;
