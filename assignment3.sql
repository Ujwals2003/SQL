CREATE DATABASE my_database;
USE my_database;

CREATE TABLE pkl_info (
    player_id INT PRIMARY KEY,  
    name VARCHAR(50) NOT NULL,  
    age INT NOT NULL,           
    country VARCHAR(50) NOT NULL, 
    matches_played INT,         
    total_runs INT,
    highest_score INT,
    batting_avg DECIMAL(5,2),
    team VARCHAR(50) NOT NULL,  
    email VARCHAR(100) UNIQUE   
);

CREATE TABLE movies_info (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,  
    genre VARCHAR(50),
    director VARCHAR(50) NOT NULL, 
    release_year INT,
    rating DECIMAL(3,1),
    duration INT,  
    language VARCHAR(50),
    budget BIGINT,
    imdb_id VARCHAR(50) UNIQUE  
);

CREATE TABLE cosmetics_info (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,  
    brand VARCHAR(50),
    category VARCHAR(50) NOT NULL,      
    price DECIMAL(10,2) NOT NULL,       
    stock_quantity INT,
    expiry_date DATE,
    weight DECIMAL(5,2),
    country_of_origin VARCHAR(50),
    barcode VARCHAR(50) UNIQUE          
);

INSERT INTO pkl_info (player_id, name, age, country, matches_played, total_runs, highest_score, batting_avg, team, email) VALUES
(1, 'Virat Kohli', 35, 'India', 250, 12000, 183, 59.5, 'RCB', 'virat.kohli@pkl.com'),
(2, 'MS Dhoni', 42, 'India', 350, 10700, 183, 50.2, 'CSK', 'ms.dhoni@pkl.com'),
(3, 'Rohit Sharma', 36, 'India', 280, 9800, 264, 48.7, 'MI', 'rohit.sharma@pkl.com'),
(4, 'Chris Gayle', 44, 'West Indies', 300, 11500, 175, 40.5, 'KKR', 'chris.gayle@pkl.com'),
(5, 'David Warner', 37, 'Australia', 275, 9800, 179, 47.8, 'SRH', 'david.warner@pkl.com'),
(6, 'AB de Villiers', 40, 'South Africa', 280, 10500, 129, 51.2, 'RCB', 'ab.devilliers@pkl.com'),
(7, 'KL Rahul', 31, 'India', 150, 5400, 112, 42.9, 'LSG', 'kl.rahul@pkl.com'),
(8, 'Hardik Pandya', 30, 'India', 160, 3200, 91, 31.5, 'GT', 'hardik.pandya@pkl.com'),
(9, 'Jos Buttler', 33, 'England', 180, 6900, 124, 46.3, 'RR', 'jos.buttler@pkl.com'),
(10, 'Andre Russell', 36, 'West Indies', 190, 4800, 121, 38.5, 'KKR', 'andre.russell@pkl.com'),
(11, 'Faf du Plessis', 39, 'South Africa', 220, 7500, 136, 45.7, 'RCB', 'faf.duplessis@pkl.com'),
(12, 'Rashid Khan', 28, 'Afghanistan', 170, 1200, 56, 25.6, 'GT', 'rashid.khan@pkl.com'),
(13, 'Shubman Gill', 24, 'India', 120, 5000, 110, 51.8, 'GT', 'shubman.gill@pkl.com'),
(14, 'Kane Williamson', 34, 'New Zealand', 200, 9500, 152, 47.2, 'SRH', 'kane.williamson@pkl.com'),
(15, 'Pat Cummins', 31, 'Australia', 140, 1100, 63, 21.3, 'KKR', 'pat.cummins@pkl.com'),
(16, 'Steve Smith', 34, 'Australia', 210, 8700, 154, 49.9, 'RR', 'steve.smith@pkl.com'),
(17, 'Jasprit Bumrah', 30, 'India', 180, 700, 42, 18.5, 'MI', 'jasprit.bumrah@pkl.com'),
(18, 'Babar Azam', 29, 'Pakistan', 170, 7800, 151, 52.0, 'PZ', 'babar.azam@pkl.com'),
(19, 'Mohammed Shami', 33, 'India', 160, 900, 44, 21.7, 'GT', 'mohammed.shami@pkl.com'),
(20, 'Yuvraj Singh', 42, 'India', 250, 8700, 139, 38.9, 'MI', 'yuvraj.singh@pkl.com');

INSERT INTO movies_info (movie_id, title, genre, director, release_year, rating, duration, language, budget, imdb_id) VALUES
(1, 'Inception', 'Sci-Fi', 'Christopher Nolan', 2010, 8.8, 148, 'English', 160000000, 'tt1375666'),
(2, 'Titanic', 'Romance', 'James Cameron', 1997, 7.8, 195, 'English', 200000000, 'tt0120338'),
(3, 'Avatar', 'Sci-Fi', 'James Cameron', 2009, 7.9, 162, 'English', 237000000, 'tt0499549'),
(4, 'The Dark Knight', 'Action', 'Christopher Nolan', 2008, 9.0, 152, 'English', 185000000, 'tt0468569'),
(5, 'Interstellar', 'Sci-Fi', 'Christopher Nolan', 2014, 8.6, 169, 'English', 165000000, 'tt0816692'),
(6, 'The Godfather', 'Crime', 'Francis Ford Coppola', 1972, 9.2, 175, 'English', 6000000, 'tt0068646'),
(7, 'Shawshank Redemption', 'Drama', 'Frank Darabont', 1994, 9.3, 142, 'English', 25000000, 'tt0111161'),
(8, 'Gladiator', 'Action', 'Ridley Scott', 2000, 8.5, 155, 'English', 103000000, 'tt0172495'),
(9, 'Parasite', 'Thriller', 'Bong Joon-ho', 2019, 8.6, 132, 'Korean', 11400000, 'tt6751668'),
(10, 'Forrest Gump', 'Drama', 'Robert Zemeckis', 1994, 8.8, 142, 'English', 55000000, 'tt0109830'),
(11, 'The Matrix', 'Sci-Fi', 'Lana Wachowski', 1999, 8.7, 136, 'English', 63000000, 'tt0133093'),
(12, 'Pulp Fiction', 'Crime', 'Quentin Tarantino', 1994, 8.9, 154, 'English', 8000000, 'tt0110912'),
(13, 'The Lion King', 'Animation', 'Jon Favreau', 2019, 6.9, 118, 'English', 260000000, 'tt6105098'),
(14, 'Joker', 'Drama', 'Todd Phillips', 2019, 8.4, 122, 'English', 55000000, 'tt7286456'),
(15, 'Avengers: Endgame', 'Action', 'Anthony Russo', 2019, 8.4, 181, 'English', 356000000, 'tt4154796'),
(16, 'Toy Story', 'Animation', 'John Lasseter', 1995, 8.3, 81, 'English', 30000000, 'tt0114709'),
(17, 'The Revenant', 'Adventure', 'Alejandro G. Iñárritu', 2015, 8.0, 156, 'English', 135000000, 'tt1663202'),
(18, 'The Departed', 'Crime', 'Martin Scorsese', 2006, 8.5, 151, 'English', 90000000, 'tt0407887'),
(19, 'Django Unchained', 'Western', 'Quentin Tarantino', 2012, 8.4, 165, 'English', 100000000, 'tt1853728'),
(20, 'Frozen', 'Animation', 'Chris Buck', 2013, 7.5, 102, 'English', 150000000, 'tt2294629');

INSERT INTO cosmetics_info (product_id, product_name, brand, category, price, stock_quantity, expiry_date, weight, country_of_origin, barcode) VALUES
(1, 'Lipstick', 'Maybelline', 'Makeup', 499.99, 500, '2025-12-31', 5.5, 'USA', '123456789012'),
(2, 'Face Wash', 'Nivea', 'Skincare', 299.50, 1000, '2024-11-30', 150.0, 'Germany', '234567890123'),
(3, 'Foundation', 'L’Oreal', 'Makeup', 799.99, 300, '2026-06-30', 50.0, 'France', '345678901234'),
(4, 'Perfume', 'Chanel', 'Fragrance', 2999.99, 200, '2026-01-01', 100.0, 'France', '345678901235'),
(5, 'Body Lotion', 'Vaseline', 'Skincare', 350.00, 800, '2025-08-15', 250.0, 'USA', '456789012345'),
(6, 'Hair Serum', 'TRESemmé', 'Haircare', 450.75, 600, '2025-07-20', 100.0, 'UK', '567890123456'),
(7, 'Nail Polish', 'Revlon', 'Makeup', 250.00, 1200, '2026-03-10', 10.0, 'USA', '678901234567'),
(8, 'Sunscreen', 'Neutrogena', 'Skincare', 550.25, 900, '2025-09-05', 200.0, 'USA', '789012345678'),
(9, 'Shampoo', 'Head & Shoulders', 'Haircare', 399.99, 1100, '2025-06-12', 500.0, 'USA', '890123456789'),
(10, 'Conditioner', 'Pantene', 'Haircare', 380.50, 950, '2025-07-30', 400.0, 'Germany', '901234567890'),
(11, 'Compact Powder', 'MAC', 'Makeup', 1100.00, 400, '2026-05-20', 15.0, 'Canada', '012345678901'),
(12, 'Hair Oil', 'Parachute', 'Haircare', 250.99, 1300, '2026-04-15', 300.0, 'India', '123456789013'),
(13, 'BB Cream', 'Garnier', 'Skincare', 299.00, 700, '2025-11-25', 50.0, 'France', '234567890124'),
(14, 'Eyebrow Pencil', 'Lakme', 'Makeup', 220.99, 850, '2026-01-05', 8.0, 'India', '345678901236'),
(15, 'Eyeliner', 'Huda Beauty', 'Makeup', 499.99, 600, '2026-02-28', 7.0, 'UAE', '456789012347'),
(16, 'Body Scrub', 'The Body Shop', 'Skincare', 899.50, 450, '2025-10-10', 300.0, 'UK', '567890123458'),
(17, 'Face Mask', 'Korean Beauty', 'Skincare', 150.00, 1000, '2025-12-01', 30.0, 'South Korea', '678901234569'),
(18, 'Hand Cream', 'Bath & Body Works', 'Skincare', 399.99, 700, '2026-03-05', 100.0, 'USA', '789012345670'),
(19, 'Makeup Remover', 'Bioderma', 'Skincare', 650.00, 500, '2026-04-12', 250.0, 'France', '890123456781'),
(20, 'Deodorant', 'Dove', 'Fragrance', 299.99, 1200, '2025-09-18', 150.0, 'UK', '901234567892');


ALTER TABLE pkl_info ADD COLUMN jersey_number INT;
ALTER TABLE movies_info ADD COLUMN box_office BIGINT;

UPDATE pkl_info SET jersey_number = 18 WHERE player_id = 1;
UPDATE pkl_info SET jersey_number = 7 WHERE player_id = 2;


UPDATE movies_info SET box_office = 829895144 WHERE movie_id = 1; -- Inception
UPDATE movies_info SET box_office = 2187463944 WHERE movie_id = 2; -- Titanic

SELECT COUNT(*) AS total_players FROM pkl_info;

SELECT AVG(batting_avg) AS avg_batting_avg FROM pkl_info;

SELECT MAX(total_runs) AS max_runs FROM pkl_info;

SELECT SUM(matches_played) AS total_matches FROM pkl_info;

SELECT MIN(age) AS youngest_player FROM pkl_info;

SELECT COUNT(*) AS total_movies FROM movies_info;
SELECT AVG(rating) AS avg_rating FROM movies_info;
SELECT MAX(box_office) AS highest_earning FROM movies_info;
SELECT SUM(budget) AS total_budget FROM movies_info;
SELECT MIN(release_year) AS oldest_movie FROM movies_info;

SELECT COUNT(*) AS total_products FROM cosmetics_info;
SELECT AVG(price) AS avg_price FROM cosmetics_info;
SELECT MAX(stock_quantity) AS highest_stock FROM cosmetics_info;
SELECT SUM(price) AS total_value FROM cosmetics_info;
SELECT MIN(expiry_date) AS nearest_expiry FROM cosmetics_info;

SELECT country, COUNT(*) AS num_players 
FROM pkl_info 
GROUP BY country 
HAVING COUNT(*) > 2;

SELECT genre, AVG(rating) AS avg_genre_rating 
FROM movies_info 
GROUP BY genre 
HAVING AVG(rating) > 7.5;

SELECT category, SUM(stock_quantity) AS total_stock 
FROM cosmetics_info 
GROUP BY category 
HAVING SUM(stock_quantity) > 500;










