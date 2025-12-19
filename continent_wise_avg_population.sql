Ques: Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and 
      their respective average city populations (CITY.Population) rounded down to the nearest integer.

      Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Ans: SELECT 
    CO.CONTINENT,
    FLOOR(AVG(C.POPULATION)) AS avg_population
            FROM CITY C
            JOIN COUNTRY CO
        ON C.COUNTRYCODE = CO.CODE
    GROUP BY CO.CONTINENT;
 
