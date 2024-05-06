CREATE DATABASE cars;

USE cars;

-- READ DATA --
SELECT * FROM cars_project;

-- TOTAL CARS: To get a count of total records --

SELECT count(*) FROM cars_project;

-- the manager asked the employee how many cars will be available in 2023? --

SELECT count(*) FROM cars_project WHERE year = 2023;

-- the manager asked the employee how many cars are available in 2020, 2021 and 2022? --

SELECT count(*) FROM cars_project WHERE year = 2020; #74
SELECT count(*) FROM cars_project WHERE year = 2021; #7
SELECT count(*) FROM cars_project WHERE year = 2022; #7

-- USING GROUP BY--

SELECT count(*) FROM cars_project WHERE year IN(2020, 2021, 2022) GROUP BY year;

-- client asked to print the total of all cars by year without all the details --
SELECT year, count(*) FROM cars_project GROUP BY year;


-- client asked car dealer agent how many diesel cars will be available in 20220? --
SELECT count(*) FROM cars_project WHERE year = 2020 and fuel = "Diesel"; #20


-- client asked car dealer agent how many pertrol cars will be available in 20220? --
SELECT count(*) FROM cars_project WHERE year = 2020 and fuel = "Petrol"; #51


-- the manager told the employee to give the print of all the fuel cars (petrol, diesel, CNG) including all the years --
SELECT year, count(*) FROM cars_project WHERE fuel = "Petrol" GROUP BY year;
SELECT year, count(*) FROM cars_project WHERE fuel = "Diesel" GROUP BY year;
SELECT year, count(*) FROM cars_project WHERE fuel = "CNG" GROUP BY year;


-- manager asked to find out the years that had more than 100 cars --
SELECT year, count(*) FROM cars_project GROUP BY year HAVING count(*)>100; 

-- manager asked to find out the years that had less than 50 cars --
SELECT year, count(*) FROM cars_project GROUP BY year HAVING count(*)<50;


-- manager asked his employee to give him a complete list of all the car count along with details between the year 2015 and 2023 --
SELECT count(*) From cars_project WHERE year BETWEEN 2015 AND 2023;


-- manager asked his employee to give him a complete list of all the car details from the year 2015 to 2023 --
SELECT * FROM cars_project WHERE year BETWEEN 2015 AND 2023;


-- END --








